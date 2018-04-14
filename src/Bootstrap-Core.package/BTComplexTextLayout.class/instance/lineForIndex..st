as yet unclassified
lineForIndex: aNumber

	aNumber <= 0 ifTrue: [^ self lines first].
	aNumber >= self text size ifTrue: [^ self lines last].

	self lines do: [:line |
		(aNumber >= line start and: [aNumber <= line stop]) ifTrue: [^ line]]