suggestions
filterSuggestions

	^ self text
		ifEmpty: [
			self displayAllWhenEmpty ifTrue: [self suggestionsList] ifFalse: [#()]]
		ifNotEmpty: [
			self suggestionsList select: [:suggestion | | suggestionText |
				suggestionText := suggestion plainText.
				(suggestionText includesSubstring: self text caseSensitive: false)]]