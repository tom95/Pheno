text
updateText: aString

	self internalText: (aString ifEmpty: [ 
		self placeholder asText addAttribute: (TextColor color: (self styleContext color alpha: 0.6))]).
	
	^ self updateSuggestions then: [self updatePreviewTextFor: aString]