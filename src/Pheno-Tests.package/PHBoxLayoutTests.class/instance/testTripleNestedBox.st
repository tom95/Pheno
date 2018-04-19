nested
testTripleNestedBox
	" two horizontal expanders, the inner one centers itself though "
	| topLevel inner outer |
	inner := self horizontalContainer align: #(center center); expand: true; minSize: 100 asPoint.
	outer := self horizontalContainer align: #(fill fill); expand: true; add: inner.
	topLevel := self horizontalTopLevel add: outer; size: 600 @ 0; fullBounds; yourself.
	
	self
		assert: 600 @ 100 equals: topLevel extent;
		assert: 600 @ 100 equals: outer extent;
		assert: 100 asPoint equals: inner extent;
		assert: 250 @ 0 equals: inner position - topLevel position