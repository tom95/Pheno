suggestions
selectedSuggestionFor: aString do: aBlock ifNone: anExceptionBlock
	" first try the selected suggestion, otherwise try completing one "

	^ self activeSuggestionDo: aBlock ifNone: [
		self suggestionsList
			detect: [:item | item textStartsWith: aString]
			ifFound: aBlock
			ifNone: anExceptionBlock]