as yet unclassified
minHeight
	| iconHeight |
	iconHeight := self hasIcon
				ifTrue: [self icon height + 2]
				ifFalse: [0].
	^ (self fontToUse height + 2 max: iconHeight) + self layoutInset top + self layoutInset bottom