aligning
testAlignCenterExpanded
	| child data topLevel |
	data := self setupAlignTest: #(center center).
	child := data first expand: true.
	topLevel := data second.
	topLevel fit; fullBounds; yourself.
	
	self
		assert: 100 asPoint equals: topLevel extent;
		assert: 50 asPoint equals: child extent;
		assert: 25 asPoint equals: child position - topLevel position.
	
	child align: #(start center).
	topLevel fullBounds.
	self assert: 0 @ 25 equals: child position - topLevel position