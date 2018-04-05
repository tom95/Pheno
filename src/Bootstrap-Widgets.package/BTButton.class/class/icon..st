instance creation
icon: anIconNameSymbol

	^ self new
		removeAllMorphs;
		add: (BTIcon perform: anIconNameSymbol);
		yourself