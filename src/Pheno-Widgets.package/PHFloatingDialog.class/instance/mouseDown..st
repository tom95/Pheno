event handling
mouseDown: anEvent

	(self fullContainsPoint: anEvent position) ifFalse: [self delete]