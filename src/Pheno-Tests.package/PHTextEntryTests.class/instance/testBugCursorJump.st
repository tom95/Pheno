as yet unclassified
testBugCursorJump
	textEntry multiLine: false.
	
	self keyStroke: textEntry key: $a.
	self keyStroke: textEntry key: $b.
	self keyStroke: textEntry key: $c.
	
	(self expect: textEntry cursor) to equal: 3.
	
	self keyStroke: textEntry key: Character arrowLeft.
	(self expect: textEntry cursor) to equal: 2