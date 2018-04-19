text
updateText: aString

	self internalText: (aString escapeEntities ifEmpty: [ | secondaryColor |
		secondaryColor := self styleContext color printHtmlString.
		'<span color="#', secondaryColor, '66">', self placeholder, '</span>']).
	
	^ self updateSuggestions then: [self updatePreviewTextFor: aString]