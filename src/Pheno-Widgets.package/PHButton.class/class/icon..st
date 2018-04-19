instance creation
icon: anIconNameSymbol

	^ self new
		removeAllMorphs;
		add: (PHIcon perform: anIconNameSymbol);
		yourself