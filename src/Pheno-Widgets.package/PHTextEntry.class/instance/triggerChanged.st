events
triggerChanged

	self triggerEvent: #changed.
	self triggerEvent: #changedWithContent with: self text