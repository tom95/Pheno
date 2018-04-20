navigation
openPage: aPage with: anObject
	
	self startLoadingOperation.
	^ ((self navigationStack open: aPage with: anObject)
		then: [self stopLoadingOperation])
		catch: [:error |
			self stopLoadingOperation.
			" pass the error on for any consumers "
			BTPromise new rejectWith: error]