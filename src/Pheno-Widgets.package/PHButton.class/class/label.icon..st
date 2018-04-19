instance creation
label: aString icon: anIconNameSymbol

	^ self new
		add: (PHIcon perform: anIconNameSymbol) at: 1;
		text: aString;
		yourself