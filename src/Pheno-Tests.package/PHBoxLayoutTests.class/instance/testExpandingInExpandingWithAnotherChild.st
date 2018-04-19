bugs
testExpandingInExpandingWithAnotherChild
	| inner outer child sizeAssertions topLevel |
	inner := self horizontalContainer expand: true.
	child := self widget minSize: 30.
	outer := self horizontalContainer
		expand: true;
		add: child;
		add: inner.
	
	topLevel := self horizontalTopLevel add: outer; size: 600 @ 0; fullBounds; yourself.
	
	sizeAssertions := [
		self
			assert: 30 asPoint equals: child extent;
			assert: 600 @ 30 equals: outer extent;
			assert: 600 @ 30 equals: topLevel extent;
			assert: 570 @ 30 equals: inner extent ].
	
	sizeAssertions value.
	
	topLevel layoutChanged; fullBounds.
	sizeAssertions value