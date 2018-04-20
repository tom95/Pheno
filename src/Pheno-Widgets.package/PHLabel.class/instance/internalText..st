text
internalText: aString

	| prefix |
	prefix := '' writeStream.
	prefix nextPutAll: '<span'.
	
	self styleAttributes keysAndValuesDo: [ :key : value |  
		prefix
			space;
			nextPutAll: key;
			nextPutAll: '="';
			nextPutAll: value;
			nextPut: $" ].
	prefix nextPut: $>.
	
	prefix nextPutAll: aString; nextPutAll: '</span>'.
	
	self layout text: prefix contents ifChanged: [self layoutChanged; changed]