as yet unclassified
createFixupLineSegmentFrom: start to: end
	"Create a line segment from the start to the end."

	self addSegment: (SVGFixupLineSegment from: start to: end).
	^end