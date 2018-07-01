initialize-release
initialize

	activeSuggestionIndex := 0.
	onlyAllowsExactMatches := false.
	displayAllWhenEmpty := false.
	suggestionsList := #().
	suggestionsDropdown := PHDropdown new.
	openSuggestionsOnFocus := true.
	
	super initialize.
	
	self addStyleClass: #textCompletionArea