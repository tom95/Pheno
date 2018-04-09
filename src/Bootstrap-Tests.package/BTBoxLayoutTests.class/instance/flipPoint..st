utilities
flipPoint: aPoint
	^isVerticalTest ifTrue: [aPoint y @ aPoint x] ifFalse: [aPoint]