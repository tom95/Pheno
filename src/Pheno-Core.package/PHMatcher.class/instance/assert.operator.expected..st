assertions
assert: aBoolean operator: anOperator expected: anExpectedValue

	| actual expected |
	actual := subject.
	expected := anExpectedValue.
	
	self
		assert: (negated ifTrue: [aBoolean not] ifFalse: [aBoolean])
		description: (self formatAssertionActual: actual expected: expected negated: negated operator: anOperator)