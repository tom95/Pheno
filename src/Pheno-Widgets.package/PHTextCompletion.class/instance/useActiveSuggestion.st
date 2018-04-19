suggestions
useActiveSuggestion

	self selectedSuggestionFor: self text do: [:item | self text: item plainText]