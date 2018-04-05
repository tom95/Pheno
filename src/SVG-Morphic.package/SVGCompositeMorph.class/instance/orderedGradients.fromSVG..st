as yet unclassified
orderedGradients: tag fromSVG: anElement
	"Answer the gradient fills from the given element in an order that will
	allow xlinks to be resolved in one pass."

	|grads ida idb xlinka xlinkb|
	grads := SortedCollection sortBlock: [:a :b |
		 ida := (a attributeAt: 'id') withBlanksTrimmed.
		idb := (b attributeAt: 'id') withBlanksTrimmed.
		xlinka := a attributeAt: 'xlink:href'.
		xlinkb := b attributeAt: 'xlink:href'.
		xlinka isNil
			ifTrue: [true]
			ifFalse: [xlinkb isNil
					ifTrue: [false]
					ifFalse: [xlinkb = ida
							ifTrue: [false]
							ifFalse: [true]]]
		].
	anElement tagsNamed: tag do: [:g |
		grads add: g].
	^grads