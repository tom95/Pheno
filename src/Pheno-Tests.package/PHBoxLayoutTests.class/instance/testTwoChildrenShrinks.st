two-children
testTwoChildrenShrinks
	| child1 child2 topLevel |
	self horizontalAndVerticalDo: [ :vertical |  
		child1 := self widget minSize: 150 asPoint; align: #(start start).
		child2 := self widget minSize: 150 asPoint; align: #(start start).
		topLevel := (self topLevel: vertical) add: child1; add: child2; shrink; yourself.
		
		self
			assert: 150 asPoint equals: child1 extent;
			assert: 150 asPoint equals: child2 extent;
			assert: (self flipPoint: 150 @ 0) equals: child2 position - child1 position;
			assert: (self flipPoint: 300 @ 150) equals: topLevel extent ]