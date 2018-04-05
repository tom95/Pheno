drawing
drawOn: aCanvas

	aCanvas
		line: self topLeft
		to: self topRight
		width: self styleContext borderWidth top withScalingFactor
		color: self styleContext borderColor