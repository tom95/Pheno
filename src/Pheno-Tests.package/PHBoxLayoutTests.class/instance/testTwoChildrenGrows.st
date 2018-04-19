two-children
testTwoChildrenGrows
	| child1 child2 topLevel |
	self horizontalAndVerticalDo: [ :vertical |  
		child1 := PHWidget new color: Color red; minSize: 150 asPoint.
		child2 := PHWidget new color: Color green; minSize: 150 asPoint.
		topLevel := (self topLevel: vertical) add: child1; add: child2; extent: (self flipPoint: 200 @ 100); vertical: vertical; spacing: 0; padding: 0; fullBounds; yourself.
		
		self
			assert: 150 asPoint equals: child1 extent;
			assert: 150 asPoint equals: child2 extent;
			assert: (self flipPoint: 150 @ 0) equals: child2 position - child1 position;
			assert: (self flipPoint: 300 @ 150) equals: topLevel extent ]