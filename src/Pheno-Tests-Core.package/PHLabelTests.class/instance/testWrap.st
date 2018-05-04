as yet unclassified
testWrap
	| label topLevel labelFullWidth |
	label := (PHLabel text: 'lorem ipsum dolor sit amet consecutor amet clericus dactus ductus doctus') wrap: #never.
	topLevel := self horizontalTopLevel add: label; shrink.
	
	labelFullWidth := (label sizeForWidth: -1) x.
	
	(self expect: label width) to equal: labelFullWidth.
	(self expect: label) to decreaseIts: #width during: [
		label wrap: #char.
		topLevel shrink]