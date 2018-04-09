as yet unclassified
testSingleLine
	textEntry multiLine: false.
	
	(self expect: textEntry) to send: #confirmed.
	
	(self expect: textEntry) to not changeIts: #height during: [
		self keyStroke: textEntry key: Character cr ].
	
	(self expect: textEntry text) to beEmpty.
	
	self checkSpies