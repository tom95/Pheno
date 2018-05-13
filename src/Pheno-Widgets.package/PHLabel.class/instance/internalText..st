text
internalText: aString

	| stringWithStyles |
	self updateFontStyles.
	
	(aString isText or: [self styleAttributes isEmpty]) ifTrue: [
		^ self layout text: aString ifChanged: [self layoutChanged; changed]].
	
	stringWithStyles := '' writeStream.
	stringWithStyles nextPutAll: '<span'.
	
	self styleAttributes keysAndValuesDo: [ :key : value |  
		stringWithStyles
			space;
			nextPutAll: key;
			nextPutAll: '="';
			nextPutAll: value;
			nextPut: $" ].
	stringWithStyles nextPut: $>.
	
	stringWithStyles nextPutAll: aString; nextPutAll: '</span>'.
	
	self layout text: stringWithStyles contents ifChanged: [self layoutChanged; changed]