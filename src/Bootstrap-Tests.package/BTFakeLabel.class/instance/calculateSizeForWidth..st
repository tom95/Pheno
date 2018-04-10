as yet unclassified
calculateSizeForWidth: aNumber
	| min nat |
	nat := self sizeForWidth: 9e8.
	min := self sizeForWidth: aNumber.
	
	^ BTSizeRequest min: min natural: (nat max: min)