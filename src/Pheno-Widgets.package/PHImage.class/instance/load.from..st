initialize-release
load: anUrlString from: aBackend

	^ ((aBackend request: anUrlString method: 'GET' data: '' contentType: nil)
		then: [:response | | document |
			document := MIMEDocument contentType: response contentType 
				content: (response contentWithProgress: nil) url: anUrlString.
			
			self
				form: (Form fromBinaryStream: document contentStream);
				changed])
		catch:[:error | error explore. self flag: #todo " show a broken picture icon "]