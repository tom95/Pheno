as yet unclassified
drawSelectionFor: index withState: aStateSymbol on: aCanvas
	
	| selectionDrawBounds |
	index ifNil: [ ^self ].
	index = 0 ifTrue: [ ^self ].
	selectionDrawBounds := self drawBoundsForRow: index.
	selectionDrawBounds := selectionDrawBounds intersect: self bounds.
	
	self styleContext withState: aStateSymbol do: [:context |
		context drawFullOn: aCanvas bounds: selectionDrawBounds]