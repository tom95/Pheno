editing
deleteAfterCursor

	| selection |
	selection := self selectionBounds.
	" if we have no selection, we mark the character after cursor "
	self hasSelection ifFalse: [selection at: 2 put: (selection first + 1 min: self text size)].
	
	text := (text first: selection first), (text allButFirst: selection second).
	self updateText: text.
	self placeCursorAt: selection first