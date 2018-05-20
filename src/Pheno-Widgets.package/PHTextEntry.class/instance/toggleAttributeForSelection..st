editing
toggleAttributeForSelection: aTextAttribute
	" if the attribute already exists in the selection, remove it. Otherwise add it. "
	
	| selectionBounds |
	selectionBounds := self selectionBounds.
	self toggleAttribute: aTextAttribute from: selectionBounds first + 1 to: selectionBounds last