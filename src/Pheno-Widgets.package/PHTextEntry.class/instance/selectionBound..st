selection
selectionBound: aNumber

	self layout selectionBound: (aNumber clampLow: 0 high: self text size).

	self changed