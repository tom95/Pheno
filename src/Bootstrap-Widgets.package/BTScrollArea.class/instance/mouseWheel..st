event handling
mouseWheel: anEvent

	| direction distance |
	direction := 0.
	anEvent isWheelUp ifTrue: [direction := -1].
	anEvent isWheelDown ifTrue: [direction := 1].
	
	distance := 0 @ self class scrollSpeed * 2 * direction.
	distance ~= 0 asPoint ifTrue: [self scrollOffset: self scrollOffset + distance]