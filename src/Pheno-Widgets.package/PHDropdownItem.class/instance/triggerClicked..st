initialize-release
triggerClicked: anEvent

	self owner delete.
	self triggerEvent: #closed.
	super triggerClicked: anEvent