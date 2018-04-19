suggestions
selectedSuggestionFor: aString do: aBlock
	" wrapper for when we do not want/need to handle the case that a suggestion does not exist. (for example because it is handled elsewhere) "

	^ self selectedSuggestionFor: aString do: aBlock ifNone: []