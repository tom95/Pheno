private
drawBorderOn: aCanvas bounds: aRectangle color: aColor radius: aRadiusRectangle width: aWidthRectangle

	| shape |
	self flag: #todo.  "only using top borderWidth atm"
	
	aColor isGradientFill ifTrue: [
		aColor origin: aRectangle topLeft rounded; direction: 0 @ aRectangle height].

	shape := (self
		roundRectShapeBounds: aRectangle
		radius: aRadiusRectangle
		borderWidth: aWidthRectangle) collect: [:p | p + aRectangle origin].
	
	aCanvas asBalloonCanvas
		aaLevel: 4;
		drawBezier3Shape: shape
		color: nil
		borderWidth: aWidthRectangle maxSide
		borderColor: aColor