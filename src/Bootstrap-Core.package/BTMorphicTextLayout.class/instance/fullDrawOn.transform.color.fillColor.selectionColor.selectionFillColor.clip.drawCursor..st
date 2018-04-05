drawing
fullDrawOn: aCanvas
transform: aTransform
color: aColor
fillColor: aFillColor
selectionColor: aSelectionColor
selectionFillColor: aSelectionFillColor
clip: aRectangle
drawCursor: aBoolean
	
	| p area |
	origin ~= aTransform offset ifTrue: [
		origin := aTransform offset.
		paragraph := nil ].
	
	p := self paragraph
		caretColor: aColor;
		selectionColor: aSelectionFillColor;
		unfocusedSelectionColor: aSelectionFillColor;
		showCaret: aBoolean;
		focused: true;
		positionWhenComposed: aTransform offset.
	
	area := aTransform offset extent: self extent.
	
	aFillColor ifNotNilDo: [ :color |
		aCanvas fillRectangle: area fillStyle: color ].
	
	aCanvas paragraph: p bounds: area color: aColor