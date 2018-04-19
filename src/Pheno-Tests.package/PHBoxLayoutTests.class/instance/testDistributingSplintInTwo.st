distributing-space
testDistributingSplintInTwo
	| topLevel child1 child2 |
	child1 := self widgetWithNaturalSize minSize: 10 asPoint; naturalSize: 300 asPoint.
	child2 := self widgetWithNaturalSize minSize: 10 asPoint; naturalSize: 300 asPoint.
	
	topLevel := self horizontalTopLevel
		size: 200 @ 10;
		add: child1;
		add: child2;
		fit.
	
	self
		assert: 200 @ 10 equals: topLevel extent;
		assert: 100 @ 10 equals: child1 extent;
		assert: 100 @ 10 equals: child2 extent