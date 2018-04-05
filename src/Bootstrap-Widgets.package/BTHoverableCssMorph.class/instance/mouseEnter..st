event handling
mouseEnter: anEvent

	self styleContext stateHover: true.
	self changed.
	
	super mouseEnter: anEvent