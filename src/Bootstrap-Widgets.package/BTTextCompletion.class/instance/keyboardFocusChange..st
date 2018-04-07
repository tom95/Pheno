event handling
keyboardFocusChange: weHaveFocus

	super keyboardFocusChange: weHaveFocus.
	
	weHaveFocus
		ifTrue: [self updateSuggestions]
		ifFalse: [self closeSuggestionPopup]