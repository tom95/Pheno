layout
padding: aPointOrRectangle
	self layoutInset: (aPointOrRectangle class = Rectangle
		ifTrue: [aPointOrRectangle expandBy: BTWidget scalingFactor]
		ifFalse: [aPointOrRectangle * BTWidget scalingFactor]) floor