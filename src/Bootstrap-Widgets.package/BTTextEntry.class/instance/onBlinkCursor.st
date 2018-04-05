cursor
onBlinkCursor

	Time millisecondClockValue < self blinkStart 
		ifTrue: [self drawCursor: true]
		ifFalse: [self drawCursor: self drawCursor not]