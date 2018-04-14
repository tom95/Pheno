as yet unclassified
rangeForLineAtYFrom: aNumber to: anotherNumber

	| lower upper |
	upper := self rangeForLineAtY: aNumber.
	lower := self rangeForLineAtY: anotherNumber - 1.
	
	^ (upper start max: lower start) to: (upper stop min: upper stop)