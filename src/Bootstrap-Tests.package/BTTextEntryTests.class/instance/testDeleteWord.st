as yet unclassified
testDeleteWord
	
	textEntry text: 'abcdef g'.
	
	textEntry placeCursorAt: 2.
	self keyStroke: textEntry key: Character delete modifiers: #(ctrl).
	
	(self expect: textEntry text) to equal: 'ab g'