instance creation
label: aString iconSuffix: anIconNameSymbol

	^ self new
		add: (BTIcon perform: anIconNameSymbol);
		text: aString;
		yourself