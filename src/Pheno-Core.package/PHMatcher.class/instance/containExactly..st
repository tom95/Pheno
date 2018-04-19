matching
containExactly: aCollection

	^ self assert: (subject hasEqualElements: aCollection) operator: 'contain exactly the same as' expected: aCollection