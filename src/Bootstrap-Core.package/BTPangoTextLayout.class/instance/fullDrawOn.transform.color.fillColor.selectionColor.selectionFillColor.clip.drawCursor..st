drawing
fullDrawOn: aCanvas
transform: aTransform
color: aColor
fillColor: aFillColor
selectionColor: aSelectionColor
selectionFillColor: aSelectionFillColor
clip: aRectangle
drawCursor: aBoolean

	self drawOn: aCanvas transform: aTransform color: aColor fillColor: (aFillColor ifNil: [Color transparent]) clip: aRectangle start: -1 end: -1.
	
	self hasSelection ifTrue: [ | selection |
		selection := self selectionBounds.
		self drawOn: aCanvas transform: aTransform color: aSelectionColor fillColor: aSelectionFillColor clip: aRectangle start: selection first end: selection second ].
	
	(aBoolean and: [self hasSelection not]) ifTrue: [ | cursorRect |
		cursorRect := (self cursorRectAt: self cursor) first.
		aCanvas
			fillRectangle: (aTransform offset - aCanvas origin + cursorRect origin extent: 1 @ cursorRect extent y)
			fillStyle: aColor ]