event handling
keyboardFocusChange: weHaveFocus

	super keyboardFocusChange: weHaveFocus.
	
	focused := weHaveFocus.
	
	focused
		ifTrue: [
			self
				startBlinking;
				triggerFocused]
		ifFalse: [self stopBlinking; clearSelection].
	
	self changed