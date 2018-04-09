aligning
testCenterAlignNested
	| centerAligned container topLevel |
	centerAligned := self widget minSize: 100 asPoint; expand: true; align: #(center center).
	container := self horizontalContainer expand: true; align: #(fill fill); add: centerAligned.
	topLevel := self verticalTopLevel add: container; fullBounds; yourself.
	
	self
		assert: 600 asPoint equals: topLevel extent;
		assert: 600 asPoint equals: container extent;
		assert: 100 asPoint equals: centerAligned extent;
		assert: 250 asPoint equals: centerAligned position - topLevel position