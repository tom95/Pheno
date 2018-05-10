drawing
drawBackgroundOn: aCanvas style: aStyle bounds: aRectangle shape: aPointArray

	aStyle backgroundColor isTransparent ifFalse: [
		self
			drawBackgroundOn: aCanvas
			bounds: aRectangle
			color: aStyle backgroundColor
			radius: aStyle borderRadius withScalingFactor
			shape: aPointArray]