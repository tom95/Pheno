as yet unclassified
rectangleForIndex: aNumber

	self lines do: [:line |
		(aNumber >= line start and: [aNumber <= line stop]) ifTrue: [^ line rectangleForIndex: aNumber]].
	
	^ 0 @ 0 extent: 0 @ 0