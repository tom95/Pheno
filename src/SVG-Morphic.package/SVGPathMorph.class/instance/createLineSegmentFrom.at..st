as yet unclassified
createLineSegmentFrom: data at: aPoint
	"Create a line segment from the path data (stream) at the given position."

	|position|
	self createLineSegmentFrom: aPoint to: (position _ data first@data second).
	^position