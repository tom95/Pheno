event handling
mouseDown: anEvent

	super mouseDown: anEvent.
	
	initiateDragOf ifNotNilDo: [ :widget |
		anEvent hand grabMorph: widget].
	
	hadMouseDown := true.
	self styleContext stateActive: true.
	self changed