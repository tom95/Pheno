drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	
	self percentage > 0 ifTrue: [
		fillStyleContext drawFullOn: aCanvas bounds: (self bounds withWidth: self width * self percentage)]