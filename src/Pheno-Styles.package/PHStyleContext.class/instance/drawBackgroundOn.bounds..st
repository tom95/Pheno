drawing
drawBackgroundOn: aCanvas bounds: aRectangle

	self
		drawBackgroundOn: aCanvas
		bounds: aRectangle
		shape: (PHRenderer roundRectShapeBounds: aRectangle radius: self borderRadius borderWidth: (Rectangle left: 1 right: 1 top: 1 bottom: 1))