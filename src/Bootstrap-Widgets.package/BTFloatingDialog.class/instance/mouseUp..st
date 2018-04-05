event handling
mouseUp: anEvent
	
	(self fullContainsPoint: anEvent position) ifFalse: [self delete]