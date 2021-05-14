layout
calculateSizeForWidth: aNumber

	| min nat |
	nat := self sizeForWidth: -1.
	min := self sizeForWidth: (((self class isSymbolicMaxWidth: aNumber) or: [wrap not and: [self ellipsize == #none]])
		ifTrue: [-1]
		ifFalse: [aNumber - self paddingAsPoint x withScalingFactor]).
	
	min := min max: (self minSize max: (self text ifNotEmpty: [8] ifEmpty: [0]) @ 0).
	
	^ (PHSizeRequest min: min natural: (nat max: min)) + self paddingAsPoint withScalingFactor