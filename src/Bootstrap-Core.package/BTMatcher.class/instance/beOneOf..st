matching
beOneOf: aCollection

	^ self assert: (aCollection includes: subject) operator: 'be one of' expected: aCollection