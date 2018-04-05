as yet unclassified
createClosingLineSegmentFrom: start to: end
	"Create a line segment from the start to the end."

	self addSegment: (SVGClosingLineSegment from: start to: end).
	^end