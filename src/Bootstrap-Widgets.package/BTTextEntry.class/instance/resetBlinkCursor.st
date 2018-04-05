cursor
resetBlinkCursor

	self
		blinkStart: Time millisecondClockValue + 500;
		drawCursor: true
