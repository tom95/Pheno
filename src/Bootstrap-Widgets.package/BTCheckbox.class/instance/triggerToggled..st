accessing
triggerToggled: aBoolean

	self triggerEvent: #toggled with: aBoolean.

	aBoolean
		ifTrue: [self triggerEvent: #enabled]
		ifFalse: [self triggerEvent: #disabled]