attributes
borderRadius: aValue
	" Rectangle mapping: topLeft -> top, topRight -> right, bottomRight -> bottom, bottomLeft -> left"

	self setProperty: #borderRadius to: (self numberToRectangle: aValue)