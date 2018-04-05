utilities
expand: aRectangle by: aPointOrRectangle
	^aPointOrRectangle class = Rectangle
		ifTrue: [ aRectangle ]
		ifFalse: [ aRectangle outsetBy: aPointOrRectangle ]