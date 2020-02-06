tests
testCanShrinkInsideWindow
	| label topLevel labelFullWidth extra |
	
	label := (PHLabel text: 'lorem ipsum dolor sit amet consecutor amet clericus dactus ductus doctuslorem ipsum dolor sit amet consecutor amet clericus dactus ductus doctuslorem ipsum dolor sit amet consecutor amet clericus dactus ductus doctuslorem ipsum dolor sit amet consecutor amet clericus dactus ductus doctuslorem ipsum dolor sit amet consecutor amet clericus dactus ductus doctus').
	labelFullWidth := (label sizeForWidth: -1) x.
	topLevel := PHPluggableWindow new addMorph: label frame: (0 @ 0 extent: 1 @ 1); extent: labelFullWidth + 100 @ 100; fullBounds; yourself.
	
	extra := (topLevel extent - topLevel layoutBounds extent) x.
	topLevel extent: labelFullWidth + extra @ 100; fullBounds.
	(self expect: label width) to equal: labelFullWidth.
	
	topLevel extent: (labelFullWidth / 2) ceiling + extra @ 200; fullBounds.
	(self expect: label width) to equal: (labelFullWidth / 2) ceiling