as yet unclassified
createPolygonFromSVGPolygon: anElement
	"Create a polygon from the svg polygon."

	^self create: SVGPolygonMorph fromSVG: anElement