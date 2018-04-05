as yet unclassified
createTextFromSVG: anElement
	"Create the text from the svg text.
	Doen't handle tspans yet!"

	self text: anElement characterData.
	self location: (anElement attributeAt: 'x' ifAbsent: [0]) asSVGNumber@(anElement attributeAt: 'y' ifAbsent: [0]) asSVGNumber
