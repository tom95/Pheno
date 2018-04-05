as yet unclassified
drawLabelOn: aCanvas 

	| stringBounds |	
	stringBounds := bounds.
	
	self hasIcon ifTrue: [
		stringBounds := stringBounds left: stringBounds left + self iconForm width + self iconSpacing ].
	self hasMarker ifTrue: [
		stringBounds := stringBounds left: stringBounds left + self submorphBounds width + 8 ].
	
	stringBounds := stringBounds translateBy: self layoutInset topLeft.

	aCanvas
		drawString: contents
		in: stringBounds
		font: self fontToUse
		color: self colorToUse.