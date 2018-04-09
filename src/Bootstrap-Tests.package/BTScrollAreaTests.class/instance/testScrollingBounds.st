as yet unclassified
testScrollingBounds
	| child scroll topLevel |
	child := self widget minSize: 100 asPoint.
	scroll := BTScrollArea new policy: #(scroll scroll); minSize: 100 @ 10; add: child.
	topLevel := self horizontalTopLevel add: scroll; shrink.
	
	scroll scrollOffset: 9999 asPoint.
	
	self
		assert: 0 @ 90 equals: scroll scrollOffset