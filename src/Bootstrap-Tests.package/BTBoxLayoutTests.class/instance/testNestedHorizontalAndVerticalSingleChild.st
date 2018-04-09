nested
testNestedHorizontalAndVerticalSingleChild
	| child horizontal vertical |
	child := self widget minSize: 100 asPoint.
	vertical := self verticalContainer add: child.
	horizontal := self horizontalTopLevel add: vertical; fit.
	
	self
		assert: 100 asPoint equals: child extent;
		assert: 100 asPoint equals: vertical extent;
		assert: 100 asPoint equals: horizontal extent