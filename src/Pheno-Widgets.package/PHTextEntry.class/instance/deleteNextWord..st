editing
deleteNextWord: direction

	| end nextWord start |
	self hasSelection ifTrue: [^ self deleteAfterCursor].
	
	nextWord := self indexForNextWord: direction.
	start := nextWord min: self cursor.
	end := nextWord max: self cursor.
	
	text := (text first: start), (text allButFirst: end).
	self
		updateText: text;
		placeCursorAt: start