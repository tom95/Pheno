assertions
assertChange: aSelectorOrBlock during: aBlock compareOperator: aSelector description: aString

	| newValue oldValue |
	oldValue := aSelectorOrBlock isBlock ifTrue: [aSelectorOrBlock value: subject] ifFalse: [subject perform: aSelectorOrBlock].
	aBlock value.
	newValue := aSelectorOrBlock isBlock ifTrue: [aSelectorOrBlock value: subject] ifFalse: [subject perform: aSelectorOrBlock].
	
	self assert: (newValue perform: aSelector with: oldValue) operator: ('{4} its {1} (went from {2} to {3})' format: {
		aSelectorOrBlock isBlock ifTrue: ['value'] ifFalse: [aSelectorOrBlock asString].
		oldValue.
		newValue.
		aString
	}) expected: nil