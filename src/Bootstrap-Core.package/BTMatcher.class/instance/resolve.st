matching
resolve
	" awaits resolve of a promise "
	
	self waitForPromise: subject.
	
	^ self assert: subject isResolved operator: 'be resolved' expected: nil