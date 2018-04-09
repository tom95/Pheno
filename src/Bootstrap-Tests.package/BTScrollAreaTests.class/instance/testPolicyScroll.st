as yet unclassified
testPolicyScroll
	| child scroll topLevel |
	child := self widget minSize: 100 asPoint.
	scroll := BTScrollArea new policy: #(scroll scroll); add: child.
	topLevel := self horizontalTopLevel add: scroll; shrink.
	
	self
		assert: 1 asPoint equals: topLevel extent;
		assert: 100 asPoint equals: child extent