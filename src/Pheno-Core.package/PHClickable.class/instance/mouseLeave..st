event handling
mouseLeave: anEvent

	super mouseLeave: anEvent.

	hadMouseDown := false.
	
	self disabled ifFalse: [
		self
			hovered: false;
			triggerHovered: false event: anEvent;
			changed]