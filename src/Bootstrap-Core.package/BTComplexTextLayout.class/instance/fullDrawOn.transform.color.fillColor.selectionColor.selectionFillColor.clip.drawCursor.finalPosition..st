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

	self lines do: [:line | line drawOn: aCanvas at: aTransform offset + line origin color: aColor]