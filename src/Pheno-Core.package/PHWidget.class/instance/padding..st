layout
padding: aPointOrRectangle
	self layoutInset: (aPointOrRectangle class = Rectangle
		ifTrue: [aPointOrRectangle expandBy: PHWidget scalingFactor]
		ifFalse: [aPointOrRectangle * PHWidget scalingFactor]) floor