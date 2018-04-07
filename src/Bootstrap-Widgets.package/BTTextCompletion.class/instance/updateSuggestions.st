suggestions
updateSuggestions
	
	^ suggestionsAsynchronusBlock
		ifNotNil: [
			(suggestionsAsynchronusBlock value: self text) then: [:suggestions |
				self
					suggestionsList: suggestions;
					displaySuggestions: self suggestionsList;
					updatePreviewTextFor: self text]]
		ifNil: [
				self displaySuggestions: self filterSuggestions.
				BTPromise unit: true]