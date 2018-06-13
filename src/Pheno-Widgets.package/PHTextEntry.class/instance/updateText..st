text
updateText: aString

	super updateText: (aString ifEmpty: [ 
		self placeholder asText addAttribute: (TextColor color: (self styleContext color alpha: 0.6))])