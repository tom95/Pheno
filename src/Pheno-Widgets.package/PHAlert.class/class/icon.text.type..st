instance creation
icon: anIconSymbol text: aString type: aColorType

	^ self new
		add: (PHIcon perform: anIconSymbol);
		add: (PHLabel text: aString);
		addStyleClass: aColorType;
		yourself