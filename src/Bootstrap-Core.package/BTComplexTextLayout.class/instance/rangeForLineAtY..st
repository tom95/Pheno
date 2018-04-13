as yet unclassified
rangeForLineAtY: aNumber

	| start end |
	start := 0.
	end := self width.
	self occluderRegions do: [:rect |
		(rect containsPoint: start @ aNumber) ifTrue: [start := rect right].
		(rect containsPoint: end @ aNumber) ifTrue: [end := rect left]].
	
	^ start to: end