simple
testIgnoreLayout
	| topLevel child1 child2 |
	child1 := self widget ignoreLayout: true; position: 40 asPoint.
	child2 := self widget position: 30 asPoint.
	topLevel := self horizontalTopLevel add: child1; add: child2; fullBounds; yourself.
	
	self
		assert: 0 asPoint equals: child2 position - topLevel position;
		assert: 40 asPoint equals: child1 position - topLevel position