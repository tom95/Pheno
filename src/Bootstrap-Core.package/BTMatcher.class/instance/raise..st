matching
raise: anErrorClass
	
	| result realError |
	realError := nil.
	result := [subject value. false] on: anErrorClass do: [:error | realError := error. error return: true].
	self assert: result operator: 'raise' expected: anErrorClass asString, (realError ifNotNil: [' (raised ', realError asString ,')'] ifNil: [''])