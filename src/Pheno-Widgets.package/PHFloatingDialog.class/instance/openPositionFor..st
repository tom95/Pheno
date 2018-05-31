displaying
openPositionFor: aWidget

	self fullBounds.
	^ aWidget boundsInWorld bottomCenter - ((self extent x / 2) @ self targetOffset negated)