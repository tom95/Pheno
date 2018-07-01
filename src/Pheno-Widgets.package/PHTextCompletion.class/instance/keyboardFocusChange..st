event handling
keyboardFocusChange: weHaveFocus

	super keyboardFocusChange: weHaveFocus.
	
	weHaveFocus
		ifTrue: [self openSuggestionsOnFocus ifTrue: [self updateSuggestions]]
		ifFalse: [self closeSuggestionPopup]