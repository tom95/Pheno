as yet unclassified
fullDrawOn: aCanvas
transform: aTransform
color: aColor
fillColor: aFillColor
selectionColor: aSelectionColor
selectionFillColor: aSelectionFillColor
clip: aRectangle
drawCursor: aBoolean
finalPosition: aPoint

	aBoolean ifTrue: [self drawCursorOn: aCanvas origin: aPoint color: aColor].
	
	self lines do: [:line | line drawOn: aCanvas at: aPoint + line origin color: aColor]