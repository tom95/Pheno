cursor
drawCursor: aBoolean

	drawCursor ~= aBoolean ifTrue: [
		drawCursor := aBoolean.
		self changed]