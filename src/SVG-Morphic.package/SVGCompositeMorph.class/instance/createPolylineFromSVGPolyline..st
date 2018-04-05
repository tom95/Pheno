as yet unclassified
createPolylineFromSVGPolyline: anElement
	"Create a polyline from the svg polyline."

	^self create: SVGPolylineMorph fromSVG: anElement

	