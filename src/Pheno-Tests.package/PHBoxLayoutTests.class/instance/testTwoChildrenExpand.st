two-children
testTwoChildrenExpand
	| child1 child2 topLevel |
	self horizontalAndVerticalDo: [ :vertical |
		child1 := self widget minSize: 150 asPoint; align: #(fill fill); expand: true.
		child2 := self widget minSize: 150 asPoint; align: #(fill fill); expand: true.
		topLevel := (self topLevel: vertical) add: child1; add: child2; extent: (self flipPoint: 600 @ 1); fullBounds; yourself.
		
		self
			assert: (self flipPoint: 600 @ 150) equals: topLevel extent;
			assert: (self flipPoint: 300 @ 150) equals: child1 extent;
			assert: (self flipPoint: 300 @ 150) equals: child2 extent;
			assert: (self flipPoint: 300 @ 0) equals: child2 position - child1 position.
		
		topLevel extent: 1 asPoint; fullBounds.
		
		self
			assert: (self flipPoint: 300 @ 150) equals: topLevel extent;
			assert: 150 asPoint equals: child1 extent;
			assert: 150 asPoint equals: child2 extent ]