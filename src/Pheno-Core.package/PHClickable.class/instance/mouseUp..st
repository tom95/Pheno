event handling
mouseUp: anEvent

	super mouseUp: anEvent.
	(self containsPoint: anEvent position)
		ifTrue: [
			hadMouseDown ifTrue: [
				self triggerClicked: anEvent.
				self styleContext stateActive: false.
				hadMouseDown := false.
				self changed]]
		ifFalse: [
			self mouseLeave: anEvent]