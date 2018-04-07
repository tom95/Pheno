initialize-release
initialize

	super initialize.
	
	self addStyleClass: #textCompletionArea.
	
	activeSuggestionIndex := 0.
	onlyAllowsExactMatches := false.
	displayAllWhenEmpty := false.
	suggestionsList := #().
	suggestionsDropdown := BTDropdown new