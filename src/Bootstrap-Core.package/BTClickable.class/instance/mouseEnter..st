event handling
mouseEnter: anEvent

	self disabled ifFalse: [
		self
			hovered: true;
			triggerHovered: true event: anEvent;
			changed]