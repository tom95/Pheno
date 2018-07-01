event handling
relativeCoordinates: aPoint

	^ ((container left - aPoint x) / (container left - container right))
		@ ((container top - aPoint y) / (container top - container bottom))