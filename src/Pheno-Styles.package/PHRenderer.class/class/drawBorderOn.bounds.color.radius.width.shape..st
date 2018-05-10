private
drawBorderOn: aCanvas bounds: aRectangle color: aColor radius: aRadiusRectangle width: aWidthRectangle shape: aPointArray

	self flag: #todo.  "only using top borderWidth atm"
	
	aColor isGradientFill ifTrue: [
		aColor origin: aRectangle topLeft rounded; direction: 0 @ aRectangle height].

	aCanvas asBalloonCanvas
		aaLevel: 4;
		drawBezier3Shape: aPointArray
		color: nil
		borderWidth: aWidthRectangle maxSide
		borderColor: aColor