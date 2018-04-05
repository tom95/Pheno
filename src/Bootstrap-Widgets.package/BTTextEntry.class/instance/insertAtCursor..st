editing
insertAtCursor: aString

	| selection |
	selection := self selectionBounds.
	
	text := (text first: selection first), aString, (text allButFirst: selection second).
	self placeCursorAt: selection first.
	self updateText: text