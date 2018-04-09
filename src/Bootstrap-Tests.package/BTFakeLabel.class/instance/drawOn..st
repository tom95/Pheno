as yet unclassified
drawOn: aCanvas
	| x y |
	super drawOn: aCanvas.
	
	x := 0.
	y := 0.
	self numberOfLetters timesRepeat: [ | rect |
		rect := ((x @ y extent: self class letterWidth @ self class lineHeight)
			insetBy: 2)
			translateBy: self layoutBounds origin.
		aCanvas fillRectangle: rect fillStyle: Color black.

		x := x + self class letterWidth.
		x + self class letterWidth >= self layoutBounds width ifTrue: [
			x := 0.
			y := y + self class lineHeight ]]