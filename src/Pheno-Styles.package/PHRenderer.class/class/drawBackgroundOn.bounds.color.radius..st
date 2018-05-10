private
drawBackgroundOn: aCanvas bounds: aRectangle color: aColor radius: aCollection

	self
		drawBackgroundOn: aCanvas
		bounds: aRectangle
		color: aColor
		radius: aCollection
		shape: (self roundRectShapeBounds: aRectangle radius: aCollection borderWidth: (Rectangle left: 1 right: 1 top: 1 bottom: 1))