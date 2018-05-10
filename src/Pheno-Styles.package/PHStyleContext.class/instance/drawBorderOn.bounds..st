drawing
drawBorderOn: aCanvas bounds: aRectangle

	self
		drawBorderOn: aCanvas
		bounds: aRectangle
		shape: (PHRenderer roundRectShapeBounds: aRectangle radius: self borderRadius borderWidth: self borderWidth)