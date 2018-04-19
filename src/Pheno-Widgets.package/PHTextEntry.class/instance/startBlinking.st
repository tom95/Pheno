cursor
startBlinking

	self
		startStepping: #onBlinkCursor 
		at: Time millisecondClockValue 
		arguments: nil
		stepTime: 500;
		
		resetBlinkCursor