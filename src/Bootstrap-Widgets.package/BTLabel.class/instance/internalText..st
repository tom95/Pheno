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
	
	self layout text: prefix contents, aString, '</span>'.
	self layoutChanged; changed