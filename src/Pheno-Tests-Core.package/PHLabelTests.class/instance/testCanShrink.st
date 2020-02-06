tests
testCanShrink
	| label topLevel labelFullWidth |
	label := (PHLabel text: 'lorem ipsum dolor sit amet consecutor amet clericus dactus ductus doctus').
	labelFullWidth := (label sizeForWidth: -1) x.
	topLevel := self horizontalTopLevel extent: labelFullWidth @ 100; add: label; fit.
	
	(self expect: label width) to equal: labelFullWidth.
	(self expect: label) to decreaseIts: #width during: [topLevel extent: labelFullWidth / 2 @ 800; fullBounds]