as yet unclassified
highlightHoverRow: row on: aCanvas
	| drawBounds  |
	drawBounds := self drawBoundsForRow: row.
	drawBounds := drawBounds intersect: self bounds.
	self styleContext withStateHoverDo: [:context |
		context drawFullOn: aCanvas bounds: drawBounds]