drawing
fullDrawOn: aCanvas
transform: aTransform
color: aColor
fillColor: aFillColor
selectionColor: aSelectionColor
selectionFillColor: aSelectionFillColor
clip: aRectangle
drawCursor: aBoolean
finalPosition: aPoint
	
	| p area |
	origin ~= aPoint ifTrue: [
		origin := aPoint.
		paragraph := nil].
	
	p := self paragraph
		caretColor: aColor;
		selectionColor: aSelectionFillColor;
		unfocusedSelectionColor: aSelectionFillColor;
		showCaret: aBoolean;
		focused: true;
		positionWhenComposed: aPoint.
	
	area := aTransform offset extent: self extent.
	
	aFillColor ifNotNilDo: [ :color |
		aCanvas fillRectangle: area fillStyle: color ].
	
	aCanvas paragraph: p bounds: (aPoint extent: area extent) color: aColor