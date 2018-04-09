as yet unclassified
testSuggestionsFiltered
	| completion displayed |
	completion := self completionWidget openInWorld; yourself.
	self click: completion.
	completion text: 'an'.
	displayed := self displayedSuggestions.
	
	(self expect: displayed) to not contain: #('Austria' 'Australia' 'Argentina').
	(self expect: displayed) to containExactly: #('Andorra' 'Germany' 'France'  'Albania')