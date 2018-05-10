drawing
drawBorderOn: aCanvas style: aStyle bounds: aRectangle shape: aPointArray

	| boxSizing width |
	aStyle borderColor isTransparent ifFalse: [
		boxSizing := aStyle boxSizing == #borderBox ifTrue: [#outsetBy:] ifFalse: [#insetBy:].
		width := aStyle borderWidth withScalingFactor.
		
		self
			drawBorderOn: aCanvas
			bounds: (aRectangle perform: boxSizing with: (width scaleBy: 0.5)) compressed
			color: aStyle borderColor
			radius: aStyle borderRadius withScalingFactor
			width: width
			shape: aPointArray]