event handling
mouseLeave: anEvent

	self styleContext stateHover: false.
	self changed.
	
	super mouseLeave: anEvent