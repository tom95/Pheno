drawing
drawOn: aCanvas

	self styleContext
		drawFullOn: aCanvas
		bounds: self bounds
		shape: (PHRenderer
			roundRectShapeWithTipBounds: self bounds
			radius: self styleContext borderRadius
			borderWidth: (Rectangle left: 1 right: 1 top: 1 bottom: 1)
			tipSize: self arrowTipSize)