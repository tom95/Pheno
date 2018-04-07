events
triggerConfirmed: aString suggestion: aBTTextCompletionSuggestion

	| plainString |
	plainString := BTMarkupParser strip: aString.
	self
		text: plainString;
		closeSuggestionPopup;
		triggerEvent: #confirmed withArguments: {plainString. aBTTextCompletionSuggestion}