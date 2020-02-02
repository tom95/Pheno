layout
calculateSizeForWidth: aNumber
	| min nat |
	nat := self sizeForWidth: 9e8.
	min := self sizeForWidth: aNumber.
	
	^ PHSizeRequest min: min natural: (nat max: min)