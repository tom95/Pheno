drawing
drawBorderOn: aCanvas bounds: aRectangle

	| adaptedBounds boxSizing width |
	boxSizing := self boxSizing == #borderBox ifTrue: [#outsetBy:] ifFalse: [#insetBy:].
	width := self borderWidth withScalingFactor.
	adaptedBounds := (aRectangle perform: boxSizing with: (width scaleBy: 0.5)) compressed.
	
	self
		drawBorderOn: aCanvas
		bounds: aRectangle
		shape: (PHRenderer
			roundRectShapeBounds: adaptedBounds
			radius: self borderRadius withScalingFactor
			borderWidth: width)