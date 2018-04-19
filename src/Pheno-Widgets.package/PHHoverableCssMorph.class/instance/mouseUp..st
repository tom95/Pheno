event handling
mouseUp: anEvent

	self styleContext stateActive: false.
	self changed.
	
	super mouseUp: anEvent