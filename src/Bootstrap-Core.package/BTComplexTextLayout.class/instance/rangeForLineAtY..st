as yet unclassified
rangeForLineAtY: aNumber

	| start end |
	start := 0.
	end := self width.
	
	self flag: #fixme. "need to figure out something smarter or loop multiple times"
	self occluderRegions do: [:rect |
		(rect top <= aNumber and: [rect bottom >= aNumber]) ifTrue: [
			(start > rect left and: [start < rect right]) ifTrue: [start := rect right].
			(end > rect left and: [start < rect left]) ifTrue: [end := rect left]]].
	
	^ start to: end