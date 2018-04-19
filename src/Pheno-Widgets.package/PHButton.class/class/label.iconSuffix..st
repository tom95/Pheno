instance creation
label: aString iconSuffix: anIconNameSymbol

	^ self new
		add: (PHIcon perform: anIconNameSymbol);
		text: aString;
		yourself