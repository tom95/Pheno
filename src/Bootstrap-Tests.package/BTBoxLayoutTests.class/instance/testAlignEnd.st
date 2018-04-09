aligning
testAlignEnd
	| child data topLevel |
	data := self setupAlignTest: #(end end).
	child := data first.
	topLevel := data second.
	topLevel fit; fullBounds; yourself.
	
	self
		assert: 100 asPoint equals: topLevel extent;
		assert: 50 asPoint equals: child extent;
		assert: 0 @ 50 equals: child position - topLevel position