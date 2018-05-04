two-children
testTwoChildrenExpandNotExpand
	"
	one child on the left that is fixed and another that expands horizontally with a fixed height of 100
	# ########
	   ########
	   ########
	"
	| child1 child2 topLevel |
	self horizontalAndVerticalDo: [ :vertical |  
		child1 := self widget minSize: 50 asPoint; align: #(start start).
		child2 := self widget align: (vertical ifTrue: [#(start fill)] ifFalse: [#(fill start)]); expand: true; minSize: (self flipPoint: 0 @ 100).
		topLevel := (self topLevel: vertical) add: child1; add: child2; extent: (self flipPoint: 600 @ 100); fullBounds; yourself.
		
		self
			assert: 50 asPoint equals: child1 extent;
			assert: (self flipPoint: 550 @ 100) equals: child2 extent;
			assert: (self flipPoint: 50 @ 0) equals: child2 position - child1 position;
			assert: (self flipPoint: 600 @ 100) equals: topLevel extent ]