as yet unclassified
testMoveVertically
	textEntry
		multiLine: true;
		extent: 1000 asPoint;
		text: 'aaa
aaa
aaa'.
	
	textEntry placeCursorAt: 0.
	
	self keyStroke: textEntry key: Character arrowRight.
	(self expect: textEntry cursor) to equal: 1.
	
	self keyStroke: textEntry key: Character arrowDown.
	(self expect: textEntry cursor) to equal: 5.
	
	self keyStroke: textEntry key: Character arrowDown.
	(self expect: textEntry cursor) to equal: 9.
	
	self keyStroke: textEntry key: Character arrowDown.
	(self expect: textEntry cursor) to equal: 11.
	
	textEntry placeCursorAt: 2.
	self keyStroke: textEntry key: Character arrowUp.
	(self expect: textEntry cursor) to equal: 0