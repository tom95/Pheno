tests
testSuggestionsFilteredShortSuggestions
	| completion displayed |
	completion := self completionWidgetWithShortSuggestions openInWorld; yourself.
	self click: completion.
	
	completion text: 'a'.
	displayed := self displayedSuggestions.
	
	(self expect: displayed) to not contain: #('b' 'B').
	(self expect: displayed) to contain: #('a' 'A' 'ANANAS')