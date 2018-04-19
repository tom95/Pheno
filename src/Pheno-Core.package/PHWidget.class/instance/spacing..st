layout
spacing: aNumber

	"self deprecated: 'use stylecontext'."
	
	spacing := (aNumber * PHWidget scalingFactor) floor.
	self layoutChanged