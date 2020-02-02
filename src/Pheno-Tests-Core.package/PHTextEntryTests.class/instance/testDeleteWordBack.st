tests
testDeleteWordBack
	
	textEntry text: 'g abcdef g'.
	
	textEntry placeCursorAt: 4.
	self keyStroke: textEntry key: Character backspace modifiers: #(ctrl).
	
	(self expect: textEntry text) to equal: 'g cdef g'