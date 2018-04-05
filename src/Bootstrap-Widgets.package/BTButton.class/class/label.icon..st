instance creation
label: aString icon: anIconNameSymbol

	^ self new
		add: (BTIcon perform: anIconNameSymbol) at: 1;
		text: aString;
		yourself