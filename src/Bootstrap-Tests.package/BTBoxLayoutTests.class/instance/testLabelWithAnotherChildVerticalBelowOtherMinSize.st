height-for-width
testLabelWithAnotherChildVerticalBelowOtherMinSize
	| topLevel label child linesAtSize labelHeight |
	label := self label align: #(start start).
	child := self widget minSize: 100 asPoint.
	topLevel := self verticalTopLevel
		add: label;
		add: child;
		extent: 50 asPoint;
		fullBounds;
		yourself.
	
	linesAtSize := (label numberOfLetters * BTFakeLabel letterWidth / 100) ceiling.
	labelHeight := linesAtSize * BTFakeLabel lineHeight.
	
	self
		assert: 100 @ (100 + labelHeight) equals: topLevel extent;
		assert: 100 @ labelHeight equals: label extent;
		assert: 0 @ labelHeight equals: child position - topLevel position