aligning
testAlignEndExpanded
	| child data topLevel |
	data := self setupAlignTest: #(end end).
	child := data first expand: true.
	topLevel := data second.
	topLevel fit; fullBounds.
	
	self
		assert: 100 asPoint equals: topLevel extent;
		assert: 50 asPoint equals: child extent;
		assert: 50 asPoint equals: child position - topLevel position.
	
	child align: #(center end).
	topLevel fullBounds.
	self assert: 25 @ 50 equals: child position - topLevel position.
	
	child align: #(start end).
	topLevel fullBounds.
	self assert: 0 @ 50 equals: child position - topLevel position