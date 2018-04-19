drawing
drawOn: aCanvas

	self styleContext drawFullOn: aCanvas bounds: self bounds.
	
	super drawOn: aCanvas