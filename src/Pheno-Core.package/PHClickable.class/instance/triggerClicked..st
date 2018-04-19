events
triggerClicked: anEvent
	" for your convenience, we also emit one version of the event without arguments \o/ "

	self disabled ifFalse: [
		self
			triggerEvent: #clickedWithEvent with: anEvent;
			triggerEvent: #clicked]