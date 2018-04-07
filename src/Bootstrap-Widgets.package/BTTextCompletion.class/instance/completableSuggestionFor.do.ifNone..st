suggestions
completableSuggestionFor: aString do: aBlock ifNone: anExceptionBlock
	" find a suggestion with the same prefix as aString "
	
	^ self suggestionsDropdown submorphs
		detect: [:item | item textStartsWith: aString]
		ifFound: aBlock
		ifNone: anExceptionBlock