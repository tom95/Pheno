events
triggerConfirmed: aString suggestion: aTextCompletionSuggestion

	| plainString |
	plainString := PHMarkupParser strip: aString.
	self triggerCompleted: aTextCompletionSuggestion.
	self
		text: plainString;
		closeSuggestionPopup;
		triggerEvent: #confirmed withArguments: {plainString. aTextCompletionSuggestion}