suggestions
openSuggestionPopup

	self world ifNotNil: [
		suggestionsDropdown
			openInWorld;
			extent: self extent;
			topLeft: (suggestionsDropdown openPositionFor: self)]