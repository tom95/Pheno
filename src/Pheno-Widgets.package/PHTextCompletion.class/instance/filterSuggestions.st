suggestions
filterSuggestions

	^ self text
		ifEmpty: [
			self displayAllWhenEmpty ifTrue: [self suggestionsList] ifFalse: [#()]]
		ifNotEmpty: [
			self flag: #performance. " we compute the position way too many times here "
			(self suggestionsList
				select: [:suggestion | suggestion plainText includesSubstring: self text caseSensitive: false])
				sort: [:a :b | (a plainText findString: self text startingAt: 1 caseSensitive: false) < (b plainText findString: self text startingAt: 1 caseSensitive: false)]]