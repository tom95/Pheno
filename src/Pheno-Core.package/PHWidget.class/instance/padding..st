layout
padding: aPointOrRectangle
	self layoutInset: (aPointOrRectangle class = Rectangle
		ifTrue: [aPointOrRectangle expandBy: PHStyleContext scalingFactor]
		ifFalse: [aPointOrRectangle * PHStyleContext scalingFactor]) floor