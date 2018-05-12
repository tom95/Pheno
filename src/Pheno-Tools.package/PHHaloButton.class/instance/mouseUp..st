as yet unclassified
mouseUp: anEvent

	super mouseUp: anEvent.
	
	self triggerEvent: #mouseUp with: anEvent.
	hasMouse := false