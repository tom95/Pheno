as yet unclassified
testPolicyShow
	| child scroll topLevel |
	child := self widget minSize: 100 asPoint.
	scroll := BTScrollArea new policy: #(show show); add: child.
	topLevel := self horizontalTopLevel add: scroll; shrink.

	self
		assert: 100 asPoint equals: topLevel extent;
		assert: 100 asPoint equals: child extent