printing
printOn: aStream

	aStream nextPutAll: 'a BTPromise'.
	self isResolved ifTrue: [
		aStream
			nextPutAll: '(resolved: ';
			nextPutAll: value printString;
			nextPutAll: ')'].
	self isRejected ifTrue: [
		aStream
			nextPutAll: '(rejected: ';
			nextPutAll: error printString;
			nextPutAll: ')'].
	self isPending ifTrue: [
		aStream
			nextPutAll: '(pending)']