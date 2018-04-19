drawing
drawBackgroundOn: aCanvas style: aStyle bounds: aRectangle

	aStyle backgroundColor isTransparent ifFalse: [
		self
			drawBackgroundOn: aCanvas
			bounds: aRectangle
			color: aStyle backgroundColor
			radius: aStyle borderRadius withScalingFactor]