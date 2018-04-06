drawing
drawOn: aCanvas

	| selectionBackground selectionColor |
	self styleContext withStateActiveDo: [:context |
		selectionColor := context color.
		selectionBackground := context backgroundColor].
	
	self
		drawOn: aCanvas
		selectionColor: selectionColor
		selectionFillColor: selectionBackground
		drawCursor: (focused and: [drawCursor])