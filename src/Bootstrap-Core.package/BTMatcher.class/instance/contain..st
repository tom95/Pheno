matching
contain: aCollectionOrValue

	| collection |
	collection := aCollectionOrValue isCollection
		ifTrue: [aCollectionOrValue]
		ifFalse: [{aCollectionOrValue}].
	
	^ self assert: (subject includesAllOf: collection) operator: 'contain the same as' expected: collection