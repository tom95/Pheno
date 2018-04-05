layout
calculateSizeForWidth: aNumber

	| padding |
	padding := self paddingAsPoint * BTStyleContext scalingFactor.
	
	^ (self adjustPreferredSize:
		(self layoutPolicy
			ifNotNilDo: [:layout | layout preferredSizeFor: self width: aNumber - padding x]
			ifNil: [BTSizeRequest fixed: minSize]))
		+ padding