as yet unclassified
createTSpanFromSVGTSpan: anElement
	"Create a text from the svg text."

	^self create: SVGTSpanMorph fromSVG: anElement