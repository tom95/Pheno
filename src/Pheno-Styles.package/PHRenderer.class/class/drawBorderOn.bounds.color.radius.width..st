private
drawBorderOn: aCanvas bounds: aRectangle color: aColor radius: aRadiusRectangle width: aWidthRectangle

	self
		drawBorderOn: aCanvas
		bounds: aRectangle
		color: aColor
		radius: aRadiusRectangle
		width: aWidthRectangle shape: (self
			roundRectShapeBounds: aRectangle
			radius: aRadiusRectangle
			borderWidth: aWidthRectangle)