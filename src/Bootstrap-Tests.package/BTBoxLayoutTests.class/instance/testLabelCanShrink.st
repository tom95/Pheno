height-for-width
testLabelCanShrink

	self horizontalAndVerticalDo: [ :vertical | | topLevel label |
		label := self label.
		topLevel := (self topLevel: vertical)
			add: label;
			extent: 300 @ 800;
			fullBounds;
			yourself.
		
		(self expect: label) to decreaseIts: #width during: [topLevel extent: 50 @ 50; fullBounds]]