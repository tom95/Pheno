matching
resolveWith: anObject
	" awaits resolve of a promise with a specific argument "
	
	self waitForPromise: subject.
	
	^ self assert: (subject isResolved and: [subject value = anObject]) operator: 'resolve with' expected: anObject