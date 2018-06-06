geometry
openPositionFor: aWidget
	
	self resizeToPreferred.
	^ (super openPositionFor: aWidget) + (0 @ self arrowTipSize)