drawing
drawBackgroundWithTipOn: aCanvas bounds: aRectangle colors: aColorSet
	self
		drawBackgroundOn: aCanvas
		bounds: aRectangle
		colors: aColorSet
		rounded: #(true true true true)
		bordered: #(true true true true)
		shapeSelector: #roundRectShapeWithTipBounds:rounded:bordered: