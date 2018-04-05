layout
calculateSizeForWidth: aNumber

	| min nat |
	nat := self sizeForWidth: -1.
	min := self sizeForWidth: ((wrap not and: [self ellipsize == #none]) ifTrue: [-1] ifFalse: [aNumber]).

	min := min max: self minSize.
	
	^ (BTSizeRequest min: min natural: (nat max: min)) + self paddingAsPoint