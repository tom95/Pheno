private
drawBackgroundOn: aCanvas bounds: aRectangle color: aColor radius: aCollection

	aColor isGradientFill ifTrue: [
		aColor origin: aRectangle topLeft rounded; direction: 0 @ aRectangle height].

	aCanvas asBalloonCanvas
		aaLevel: 4;
		drawBezier3Shape: ((self roundRectShapeBounds: aRectangle radius: aCollection borderWidth: (Rectangle left: 1 right: 1 top: 1 bottom: 1)) collect: [:po | po + aRectangle origin])
		color: aColor
		borderWidth: 0
		borderColor: nil