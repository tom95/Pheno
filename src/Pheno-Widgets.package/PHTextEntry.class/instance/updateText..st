text
updateText: aString

	super updateText: (aString ifEmpty: [ 
		aString asText addAttribute: (TextColor color: (self styleContext color alpha: 0.6))])