event handling
dragAndDrop: anEvent

	self inStickyMode
		ifTrue: [self scrollOffset: ((self relativeCoordinates: (anEvent endPoint)) * self contentHeight)]
		ifFalse: [ | distance direction |
			" This should scroll a bit faster than the mouse wheel "
			direction := anEvent startPoint y < anEvent endPoint y ifTrue: [1] ifFalse: [-1].
			distance := 0 @ self class scrollSpeed * 2 * direction.
			
			self scrollOffset: self scrollOffset + distance]