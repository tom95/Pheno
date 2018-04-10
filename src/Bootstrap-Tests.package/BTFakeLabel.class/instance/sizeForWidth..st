as yet unclassified
sizeForWidth: aNumber

	| requiredWidth linesNat |
	requiredWidth := self numberOfLetters * self class letterWidth.
	linesNat := (requiredWidth / (aNumber max: 1)) ceiling max: 1.
	
	^ (linesNat < 2 ifTrue: [requiredWidth] ifFalse: [aNumber]) @ (linesNat * self class lineHeight)