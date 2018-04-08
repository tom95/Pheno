initialize-release
initialize

	activeSuggestionIndex := 0.
	onlyAllowsExactMatches := false.
	displayAllWhenEmpty := false.
	suggestionsList := #().
	suggestionsDropdown := BTDropdown new.
	
	super initialize.
	
	self addStyleClass: #textCompletionArea