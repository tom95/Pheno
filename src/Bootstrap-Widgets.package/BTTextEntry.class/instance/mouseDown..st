event handling
mouseDown: anEvent

	anEvent hand newKeyboardFocus: self.
	
	self placeCursorAt: (self cursorFromEvent: anEvent)