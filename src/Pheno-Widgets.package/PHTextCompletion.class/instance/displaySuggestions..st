suggestions
displaySuggestions: aCollectionOfSuggestions

	suggestionsDropdown removeAllMorphs.
	
	self resetActiveSuggestion.
	(aCollectionOfSuggestions isEmpty or: [self hasKeyboardFocus not])
		ifTrue: [^ self closeSuggestionPopup].
	
	self openSuggestionPopup.
	
	aCollectionOfSuggestions do: [:suggestion | | suggestionString |
		suggestionString := (self markupForResult: suggestion plainText).
		suggestion label text: suggestionString.
		suggestionsDropdown add: suggestion]