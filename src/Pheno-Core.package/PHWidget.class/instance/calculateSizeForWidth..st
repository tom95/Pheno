layout
calculateSizeForWidth: aNumber

	| padding |
	padding := self paddingAsPoint * PHStyleContext scalingFactor.
	
	^ (self adjustPreferredSize:
		(self layoutPolicy
			ifNotNilDo: [:layout | layout preferredSizeFor: self width: aNumber - padding x]
			ifNil: [PHSizeRequest fixed: minSize]))
		+ padding