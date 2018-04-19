event handling
relativeCoordinates: aPoint

	| containerBottom containerTop |
	containerTop := container topLeft y.
	containerBottom := container bottomRight y.
	
	^ self scrollOffset x @ ((containerTop - aPoint y) / (containerTop - containerBottom))