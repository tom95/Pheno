distributing-space
testDistributingFillExpanderFirst
	| topLevel child1 child2 |
	child1 := self widgetWithNaturalSize expand: true; minSize: 10 asPoint; align: #(fill fill).
	child2 := self widgetWithNaturalSize minSize: 10 asPoint; naturalSize: 20 asPoint.
	
	topLevel := self horizontalTopLevel
		size: 200 @ 10;
		add: child1;
		add: child2;
		fullBounds;
		yourself.

	self
		assert: 180 @ 10 equals: child1 extent;
 		assert:  20 @ 10 equals: child2 extent;
		assert: 200 @ 10 equals: topLevel extent