as yet unclassified
testWrap
	| label topLevel labelFullWidth |
	label := (BTLabel text: 'lorem ipsum dolor sit amet consecutor amet clericus dactus ductus doctus') wrap: #never.
	topLevel := self horizontalTopLevel add: label; shrink.
	
	labelFullWidth := (label sizeForWidth: -1) x.
	
	self assert: labelFullWidth equals: label width.
	
	label wrap: #char.
	topLevel shrink.
	
	self assert: label width < labelFullWidth