as yet unclassified
testMultiLine
	textEntry multiLine: true.
	
	(self expect: textEntry) to not send: #confirmed.
	
	(self expect: textEntry) to increaseIts: #height during: [
		self keyStroke: textEntry key: Character cr.
		topLevel shrink ].
	
	(self expect: textEntry text) to equal: String cr.
	
	self checkSpies