layout
spacing: aNumber

	"self deprecated: 'use stylecontext'."
	
	spacing := (aNumber * BTWidget scalingFactor) floor.
	self layoutChanged