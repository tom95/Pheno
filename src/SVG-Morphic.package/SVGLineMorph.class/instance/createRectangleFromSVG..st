as yet unclassified
createRectangleFromSVG: anElement
	"Create the segments from the rect."

	self
		rectangle:  ((anElement attributeAt: 'x1' ifAbsent: [0]) asSVGNumber@(anElement attributeAt: 'y1' ifAbsent: [0]) asSVGNumber
					corner: (anElement attributeAt: 'x2' ifAbsent: [0]) asSVGNumber@(anElement attributeAt: 'y2' ifAbsent: [0]) asSVGNumber)