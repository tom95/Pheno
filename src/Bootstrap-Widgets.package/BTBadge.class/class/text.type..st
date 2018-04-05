instance creation
text: aString type: aClassSymbol
	" most themes support #danger, #warning, #success, #info, #primary "
	
	^self new
		addStyleClass: (self colorVariant: aClassSymbol for: #badge);
		text: aString;
		yourself