simple
testNotMoreThanNaturalSize
	| child topLevel |
	child := self widgetWithNaturalSize naturalSize: 200 @ 200.
	topLevel := self horizontalTopLevel add: child; fullBounds; yourself.
	
	self
		assert: 600 asPoint equals: topLevel extent;
		assert: 200 asPoint equals: child extent