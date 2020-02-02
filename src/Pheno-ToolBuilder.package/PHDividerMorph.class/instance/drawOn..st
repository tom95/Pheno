drawing
drawOn: aCanvas

	aCanvas
		line: self leftCenter + self layoutInset left
		to: self rightCenter - self layoutInset right
		width: self styleContext borderWidth top
		color: self styleContext borderColor