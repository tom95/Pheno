accessing
completionWidgetWithShortSuggestions

	^ completionWidget := PHTextCompletion new suggestionsList: {
		'a'.
		'b'.
		'A'.
		'B'.
		'ANANAS'}