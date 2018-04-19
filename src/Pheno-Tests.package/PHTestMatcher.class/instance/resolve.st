matching
resolve
	" awaits resolve of a promise "
	
	self waitForPromiseUpdatingWorld: subject.
	
	^ self assert: subject isResolved operator: 'be resolved' expected: nil