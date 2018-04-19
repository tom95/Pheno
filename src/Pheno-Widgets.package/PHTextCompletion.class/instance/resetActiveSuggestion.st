suggestions
resetActiveSuggestion

	self suggestionsList do: [:item | item active: false].
	
	activeSuggestionIndex := 0