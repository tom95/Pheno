events
triggerConfirmed: aString
	" trigger confirmed if string is a valid completion "

	(self isValidCompletion: aString) ifTrue: [
		self
			useActiveSuggestion;
			triggerConfirmed: self text
			suggestion: (self selectedSuggestionFor: self text do: #yourself)]