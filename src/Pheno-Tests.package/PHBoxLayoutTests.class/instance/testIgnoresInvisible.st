simple
testIgnoresInvisible
	| topLevel child1 child2 |
	child1 := self widget visible: false; minSize: 100 asPoint.
	child2 := self widget.
	topLevel := self horizontalTopLevel add: child1; add: child2; fullBounds; yourself.
	
	self assert: 0 asPoint equals: child2 position - topLevel position