layout
spacing: aNumber

	"self deprecated: 'use stylecontext'."
	
	spacing := (aNumber * PHStyleContext scalingFactor) floor.
	self layoutChanged