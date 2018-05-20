editing
addAttributeForSelection: aTextAttribute
	
	| selectionBounds |
	selectionBounds := self selectionBounds.
	self addAttribute: aTextAttribute from: selectionBounds first + 1 to: selectionBounds last