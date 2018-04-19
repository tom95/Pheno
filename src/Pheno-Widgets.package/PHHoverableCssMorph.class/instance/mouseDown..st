event handling
mouseDown: anEvent

	self styleContext stateActive: true.
	self changed.
	
	super mouseDown: anEvent