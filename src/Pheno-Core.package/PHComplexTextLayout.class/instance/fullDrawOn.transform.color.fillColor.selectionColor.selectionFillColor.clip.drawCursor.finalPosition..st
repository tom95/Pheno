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

	(aBoolean and: [self cursor = self selectionBound]) ifTrue: [self drawCursorOn: aCanvas origin: aPoint color: aColor].
	
	self cursor ~= self selectionBound ifTrue: [
		aCanvas translateBy: aPoint during: [:c | self drawSelectionOn: c color: aSelectionColor background: aSelectionFillColor]].
	
	self lines do: [:line | line drawOn: aCanvas at: aPoint + line origin color: aColor]