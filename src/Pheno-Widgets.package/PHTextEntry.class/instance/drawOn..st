drawing
drawOn: aCanvas

	| selectionBackground selectionColor |
	self styleContext withClass: #selection do: [:context |
		selectionColor := context color.
		selectionBackground := context backgroundColor].
	
	self
		drawOn: aCanvas
		selectionColor: selectionColor
		selectionFillColor: selectionBackground
		drawCursor: (focused and: [drawCursor])