event handling
scroll: anEvent

	self scrollArea ifNotNil: [self scrollArea dragAndDrop: anEvent]