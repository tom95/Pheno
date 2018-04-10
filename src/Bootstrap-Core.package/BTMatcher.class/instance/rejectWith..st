matching
rejectWith: anObject
	" awaits rejection of a promise with a specific argument "
	
	self waitForPromise: subject.
	
	^ self assert: (subject isRejected and: [subject error = anObject]) operator: 'reject with' expected: anObject