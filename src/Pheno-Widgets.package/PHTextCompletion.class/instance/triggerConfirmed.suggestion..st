events
triggerConfirmed: aString suggestion: aPHTextCompletionSuggestion

	| plainString |
	plainString := PHMarkupParser strip: aString.
	self
		text: plainString;
		closeSuggestionPopup;
		triggerEvent: #confirmed withArguments: {plainString. aPHTextCompletionSuggestion}