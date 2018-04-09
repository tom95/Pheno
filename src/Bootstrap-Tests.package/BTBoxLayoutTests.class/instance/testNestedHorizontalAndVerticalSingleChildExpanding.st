nested
testNestedHorizontalAndVerticalSingleChildExpanding
	| child horizontal vertical |
	child := self widget minSize: 100 asPoint; align: #(start start).
	vertical := self verticalContainer align: #(fill fill); expand: true; add: child.
	horizontal := self horizontalTopLevel add: vertical; size: 600 @ 0; fullBounds; yourself.
	
	self
		assert: 100 asPoint equals: child extent;
		assert: 600 @ 100 equals: vertical extent;
		assert: 600 @ 100 equals: horizontal extent.
	
	vertical extent: 5 asPoint; fullBounds.
	
	self assert: 100 asPoint equals: vertical extent