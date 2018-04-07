accessing
suggestionsAsynchronusBlock: aBlock
	" expects a block that will be called with the text entered into the TextCompletion widget and returns a promise resolving in a list of BTTextCompletionSuggestion objects"
		
	suggestionsAsynchronusBlock := aBlock