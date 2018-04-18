as yet unclassified
lineForIndex: aNumber

	aNumber <= 1 ifTrue: [^ self lines first].
	aNumber >= self text size ifTrue: [^ self lines last].

	self lines do: [:line |
		(aNumber >= line start and: [aNumber <= line stop]) ifTrue: [^ line]].
	
	^ self error: 'should not be reached'