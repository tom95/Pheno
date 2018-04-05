drawing
drawOn: aCanvas

	| selectionBackground selectionColor |
	self styleContext stateActive: true.
	selectionColor := self styleContext color.
	selectionBackground := self styleContext backgroundColor.
	self styleContext stateActive: false.

	self
		drawOn: aCanvas
		selectionColor: selectionColor
		selectionFillColor: selectionBackground
		drawCursor: (focused and: [drawCursor])