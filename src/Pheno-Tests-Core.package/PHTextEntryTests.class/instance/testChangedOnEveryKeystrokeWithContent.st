as yet unclassified
testChangedOnEveryKeystrokeWithContent
	textEntry 
		multiLine: true;
		text: ''.
	
	textEntry placeCursorAt: 0.
	(self expect: textEntry) to send: #changed.
	(self expect: textEntry) to send: #changedWithContent withArguments: {'ab'}.
	
	self keyStroke: textEntry key: $a.
	self keyStroke: textEntry key: $b.
	
	self checkSpies