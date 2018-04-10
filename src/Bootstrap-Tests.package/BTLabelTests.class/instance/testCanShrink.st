as yet unclassified
testCanShrink
	| label topLevel labelFullWidth |
	label := (BTLabel text: 'lorem ipsum dolor sit amet consecutor amet clericus dactus ductus doctus').
	topLevel := self horizontalTopLevel add: label; fit.
	
	labelFullWidth := (label sizeForWidth: -1) x.
	
	(self expect: label width) to equal: labelFullWidth.
	(self expect: label) to decreaseIts: #width during: [topLevel extent: labelFullWidth / 2 @ 800; fullBounds]