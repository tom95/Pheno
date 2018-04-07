suggestions
isValidCompletion: aString

	^ activeSuggestionIndex ~= 0 or: 
		[self onlyAllowsExactMatches not or:
		[suggestionsList anySatisfy: [:suggestion | suggestion plainText = aString]]]