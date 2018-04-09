height-for-width
testLabel
	| topLevel label widthForTwoLines |
	self horizontalAndVerticalDo: [ :vertical |
		label := self label.
		widthForTwoLines := label numberOfLetters * BTFakeLabel letterWidth // 2.
		topLevel := (self topLevel: vertical)
			add: label;
			extent: widthForTwoLines @ 600;
			fit.
		
		self
			assert: widthForTwoLines @ (2 * BTFakeLabel lineHeight) equals: topLevel extent ]