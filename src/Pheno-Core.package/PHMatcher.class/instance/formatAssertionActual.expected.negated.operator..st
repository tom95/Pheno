assertions
formatAssertionActual: actualObject expected: expectedObject negated: negatedBoolean operator: operatorString

	^ ('Expected {1} to{3} {4} {2}' format: {
		actualObject printString.
		expectedObject ifNil: [''] ifNotNil: [expectedObject printString].
		negatedBoolean ifTrue: [' not'] ifFalse: [''].
		operatorString})