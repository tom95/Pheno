as yet unclassified
create: anSVGComponentMorphClass fromSVG: anElement
	"Create a component from the svg."

	|comp|
	comp := anSVGComponentMorphClass new.
	comp extent: self extent.
	comp transform: MatrixTransform2x3 identity.
	self addMorph: comp.
	^comp createFromSVG: anElement
	

	