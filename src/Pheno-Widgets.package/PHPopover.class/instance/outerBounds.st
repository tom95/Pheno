geometry
outerBounds

	^ super outerBounds expandBy: (Rectangle left: 0 right: 0 top: self arrowTipSize bottom: 0)