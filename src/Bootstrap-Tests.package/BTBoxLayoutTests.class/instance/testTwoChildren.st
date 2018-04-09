two-children
testTwoChildren
	| child1 child2 topLevel |
	self horizontalAndVerticalDo: [ :vertical |
		child1 := self widget minSize: 100 asPoint.
		child2 := self widget minSize: 100 asPoint.
		topLevel := (self topLevel: vertical) add: child1; add: child2; extent: (self flipPoint: 200 @ 100); fit; yourself.
		
		self
			assert: 100 asPoint equals: child1 extent;
			assert: 100 asPoint equals: child2 extent;
			assert: (self flipPoint: 100 @ 0) equals: child2 position - child1 position ]