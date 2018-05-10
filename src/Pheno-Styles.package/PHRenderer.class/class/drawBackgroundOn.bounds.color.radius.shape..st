private
drawBackgroundOn: aCanvas bounds: aRectangle color: aColor radius: aCollection shape: aPointArray

	aColor isGradientFill ifTrue: [
		aColor origin: aRectangle topLeft rounded; direction: 0 @ aRectangle height].

	aCanvas asBalloonCanvas
		aaLevel: 4;
		drawBezier3Shape: aPointArray
		color: aColor
		borderWidth: 0
		borderColor: nil