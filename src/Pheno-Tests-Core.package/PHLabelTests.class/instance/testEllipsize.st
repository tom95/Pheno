tests
testEllipsize
	| label topLevel labelFullWidth |
	label := (PHLabel text: 'lorem ipsum dolor sit amet consecutor amet clericus dactus ductus doctus') wrap: #never.
	topLevel := self horizontalTopLevel add: label; shrink.
	
	labelFullWidth := (label sizeForWidth: -1) x.
	
	self
		assert: labelFullWidth equals: label width;
		assert: labelFullWidth equals: topLevel width.
	
	label ellipsize: #end.
	topLevel shrink.
	
	self
		assert: label width < labelFullWidth;
		assert: topLevel width < labelFullWidth