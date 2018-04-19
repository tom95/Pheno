assertions
assert: aBoolean description: aString

	aBoolean ifFalse: [self error: aString]