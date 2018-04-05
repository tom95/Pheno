accessing
printOn: aStream
	"Print a description of the receiver on the given stream,"

	super printOn: aStream.
	aStream 
		nextPutAll: '(id=';
		nextPutAll: (self id ifNil: ['<none>']);
		nextPut: $)