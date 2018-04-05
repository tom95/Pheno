displaying
openPositionFor: aWidget

	self fullBounds.
	^ aWidget bounds bottomCenter - ((self extent x / 2) @ self targetOffset negated)