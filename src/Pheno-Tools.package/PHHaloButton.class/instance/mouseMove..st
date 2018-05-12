as yet unclassified
mouseMove: anEvent

	super mouseDown: anEvent.
	
	hasMouse ifTrue: [
		self triggerEvent: #mouseMove with: anEvent]