as yet unclassified
rangeForLineAtYFrom: aNumber to: anotherNumber

	| lower upper |
	upper := self rangeForLineAtY: aNumber.
	lower := self rangeForLineAtY: anotherNumber - 1.
	
	^ (upper first max: lower first) to: (upper last min: upper last)