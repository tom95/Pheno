drawing
drawOn: aCanvas selectionColor: aColor selectionFillColor: anotherColor drawCursor: aBoolean

	| transform |
	transform := self angle ~= 0
		ifTrue: [
			(MatrixTransform2x3 withOffset: self extent / 2 + self layoutBounds origin + aCanvas origin)
			composedWithLocal: ((MatrixTransform2x3 withAngle: self angle)
			composedWithLocal: (MatrixTransform2x3 withOffset: self extent / -2)) ]
		ifFalse: [MatrixTransform2x3 withOffset: self layoutBounds origin + aCanvas origin].
	
	self layout
		fullDrawOn: aCanvas
		transform: transform
		color: self styleContext color
		fillColor: self styleContext backgroundColor
		selectionColor: aColor
		selectionFillColor: anotherColor
		clip: (aCanvas clipRect translateBy: aCanvas origin)
		drawCursor: aBoolean