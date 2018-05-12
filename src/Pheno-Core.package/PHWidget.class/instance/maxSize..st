layout
maxSize: aPoint
	" maximum size this widget max take. specify negative numbers to unconstrain size in the dimension "
	maxSize := aPoint asPoint * PHStyleContext scalingFactor.
	self layoutChanged