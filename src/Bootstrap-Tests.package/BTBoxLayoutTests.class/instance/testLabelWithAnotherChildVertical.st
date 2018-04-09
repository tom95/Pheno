height-for-width
testLabelWithAnotherChildVertical
	| topLevel label child linesAtSize labelHeight |
	label := self label align: #(start start).
	child := self widget minSize: 100 asPoint.
	topLevel := self verticalTopLevel
		add: label;
		add: child;
		extent: 600 asPoint;
		fullBounds;
		yourself.
	
	linesAtSize := (label numberOfLetters * BTFakeLabel letterWidth / topLevel extent x) ceiling.
	labelHeight := linesAtSize * BTFakeLabel lineHeight.
	
	self
		assert: 600 asPoint equals: topLevel extent;
		assert: 600 @ labelHeight equals: label extent;
		assert: 0 @ labelHeight equals: child position - topLevel position