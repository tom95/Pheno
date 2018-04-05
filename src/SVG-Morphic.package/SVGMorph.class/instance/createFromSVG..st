accessing
createFromSVG: anElement
	"Create the receiver from the given svg element"

	self removeAllMorphs.
	self setDimensionsFromSVG: anElement.
	anElement tagsNamed: #defs do: [:defs |
		self createDefsFromSVGDefs: defs].
	super createFromSVG: anElement