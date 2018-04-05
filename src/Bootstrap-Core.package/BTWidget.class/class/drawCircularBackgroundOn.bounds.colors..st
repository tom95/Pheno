drawing
drawCircularBackgroundOn: aCanvas bounds: aRectangle colors: aColorSet
	" requires aRectangle to be square! "
	aCanvas asBalloonCanvas
		aaLevel: 4;
		
		drawBezier3Shape: ((self circleShape: aRectangle width) collect: [ :po | po + aRectangle origin ])
		color: (aColorSet background)
		borderWidth: ((aColorSet border) ifNil: [0] ifNotNil: [1])
		borderColor: (aColorSet border)