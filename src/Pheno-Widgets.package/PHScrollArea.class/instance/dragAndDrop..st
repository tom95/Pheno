event handling
dragAndDrop: anEvent

	self inStickyMode
		ifTrue: [ self flag: #todo. "fix this so that other scrollbar does not move to bottom"
			self scrollOffset: ((self relativeCoordinates: (anEvent endPoint)) * self contentExtent)]
		ifFalse: [ | distance directionX directionY |
			" This should scroll a bit faster than the mouse wheel "
			directionX := anEvent startPoint x < anEvent endPoint x ifTrue: [1] ifFalse: [-1].
			directionY := anEvent startPoint y < anEvent endPoint y ifTrue: [1] ifFalse: [-1].
			distance := self class scrollSpeed * 2 * (directionX @ directionY).
			
			self scrollOffset: self scrollOffset + distance]