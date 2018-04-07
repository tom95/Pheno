suggestions
activeSuggestionDo: aBlock ifNone: anExceptionBlock
	" the suggestion selected via the arrow keys "

	^ activeSuggestionIndex = 0
		ifTrue: [anExceptionBlock value]
		ifFalse: [aBlock value: (self suggestionsDropdown submorphs at: activeSuggestionIndex)]