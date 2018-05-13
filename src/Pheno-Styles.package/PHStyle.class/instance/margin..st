helper
margin: aNumberOrPointOrRectangle

	^ self setProperty: #margin to: (self numberToRectangle: aNumberOrPointOrRectangle)