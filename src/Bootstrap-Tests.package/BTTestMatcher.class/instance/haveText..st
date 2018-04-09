ui-matching
haveText: aString

	self subject allMorphsDo: [:morph |
		((morph isKindOf: BTLabel) and: [morph text includesSubstring: aString]) ifTrue: [
			^ self assert: true operator: 'have text' expected: aString]].
	
	self assert: false operator: 'have text' expected: aString