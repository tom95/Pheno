editing
deleteBeforeCursor

	| selection |
	selection := self selectionBounds.
	" if we have no selection, we mark the character before cursor "
	self hasSelection ifFalse: [selection at: 1 put: (selection first - 1 max: 0)].
	
	text := (text first: selection first), (text allButFirst: selection second).
	self updateText: text.
	self placeCursorAt: selection first