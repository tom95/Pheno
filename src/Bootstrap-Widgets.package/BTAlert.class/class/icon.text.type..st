instance creation
icon: anIconSymbol text: aString type: aColorType

	^ self new
		add: (BTIcon perform: anIconSymbol);
		add: (BTLabel text: aString);
		addStyleClass: aColorType;
		yourself