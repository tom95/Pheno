height-for-width
testLabelWithAnotherChildVerticalSmallWindow
	| topLevel label child linesAtSize labelHeight |
	label := self label align: #(start start).
	child := self widget minSize: 100 asPoint.
	topLevel := self verticalTopLevel
		add: label;
		add: child;
		extent: 600 asPoint;
		fullBounds;
		yourself.
	
	linesAtSize := (label numberOfLetters * BTFakeLabel letterWidth / 600) ceiling.
	labelHeight := linesAtSize * BTFakeLabel lineHeight.
	
	self
		assert: 600 asPoint equals: topLevel extent;
		assert: 600 @ labelHeight equals: label extent;
		assert: 0 @ labelHeight equals: child position - topLevel position.
	
	topLevel extent: 100 asPoint; fullBounds.
	linesAtSize := (label numberOfLetters * BTFakeLabel letterWidth / 100) ceiling.
	labelHeight := linesAtSize * BTFakeLabel lineHeight.
	
	self assert: 100 @ (100 + labelHeight) equals: topLevel extent