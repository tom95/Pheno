instance creation
text: aString type: aColorType
	^ (self text: aString)
		addStyleClass: aColorType;
		yourself