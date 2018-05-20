editing
removeAttributeForSelection: aTextAttribute
	
	| selectionBounds |
	selectionBounds := self selectionBounds.
	self removeAttribute: aTextAttribute from: selectionBounds first + 1 to: selectionBounds last