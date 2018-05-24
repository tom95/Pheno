layout
calculateSizeForWidth: aNumber

	| min nat |
	nat := self sizeForWidth: -1.
	min := self sizeForWidth: ((wrap not and: [self ellipsize == #none]) ifTrue: [-1] ifFalse: [aNumber - self paddingAsPoint x withScalingFactor]).
	
	min := min max: self minSize.
	
	^ (PHSizeRequest min: min natural: (nat max: min)) + self paddingAsPoint withScalingFactor