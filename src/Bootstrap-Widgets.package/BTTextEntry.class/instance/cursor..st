cursor
cursor: aNumber

	self layout cursor: (aNumber clampLow: 0 high: self text size).

	self
		resetBlinkCursor;
		changed