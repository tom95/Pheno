as yet unclassified
createTextFromSVG: anElement
	"Create the text from the svg text."

	super createTextFromSVG: anElement.
	self location:
		(anElement attributeAt: 'x' ifAbsent: [self owner location x]) asSVGNumber @
		(anElement attributeAt: 'y' ifAbsent: [self owner location y]) asSVGNumber
