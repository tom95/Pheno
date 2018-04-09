height-for-width
testLabelWithAnotherChildHorizontal
	| topLevel label child linesAtSize |
	label := self label align: #(start start).
	child := self widget minSize: 100 asPoint.
	topLevel := self horizontalTopLevel
		add: label;
		add: child;
		extent: 600 asPoint;
		fit.

	linesAtSize := label numberOfLetters * BTFakeLabel letterWidth // (topLevel extent x - child minSize x).
	
	self
		assert: 600 @ 100 equals: topLevel extent;
		assert: 500 @ (linesAtSize * BTFakeLabel lineHeight) equals: label extent