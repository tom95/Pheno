as yet unclassified
calculateSizeForWidth: aNumber
	| linesNat required height min |
	required := self numberOfLetters * self class letterWidth.
	linesNat := (required / (aNumber max: 1)) ceiling max: 1.
	height := linesNat * self class lineHeight.
	min := aNumber @ height.
	
	^ BTSizeRequest min: min natural: (required @ self class lineHeight max: min)