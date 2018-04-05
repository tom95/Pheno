as yet unclassified
createFromSVG: anElement
	"Create a path from the svg path."

	self
		id: (anElement attributeAt: 'id');
		transform: (self transformFromSVGElement: anElement);
		setStyleFromSVG: anElement