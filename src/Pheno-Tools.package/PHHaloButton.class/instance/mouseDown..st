as yet unclassified
mouseDown: anEvent

	super mouseDown: anEvent.
	
	self triggerEvent: #mouseDown with: anEvent.
	hasMouse := true