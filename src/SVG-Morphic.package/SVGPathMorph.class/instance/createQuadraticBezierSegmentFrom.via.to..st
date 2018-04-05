as yet unclassified
createQuadraticBezierSegmentFrom: start via: control to: end
	"Create a cubic bezier segment from the start to the end via the control points."

	(control = start or: [control = end])
		ifTrue: [self createLineSegmentFrom: start to: end]
		ifFalse: [self addSegment: (Bezier2Segment from: start via: control to: end)]