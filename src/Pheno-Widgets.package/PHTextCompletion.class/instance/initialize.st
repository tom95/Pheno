initialize-release
initialize

	activeSuggestionIndex := 0.
	onlyAllowsExactMatches := false.
	displayAllWhenEmpty := false.
	suggestionsList := #().
	suggestionsDropdown := PHDropdown new.
	
	super initialize.
	
	self addStyleClass: #textCompletionArea