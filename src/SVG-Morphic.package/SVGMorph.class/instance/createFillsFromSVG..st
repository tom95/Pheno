as yet unclassified
createFillsFromSVG: anElement
	"Create the receiver's fills from the given element."

	(self orderedGradients: #linearGradient fromSVG: anElement) do: [:g |
		self createFillFromSVGLinearGradient: g].
	(self orderedGradients: #radialGradient fromSVG: anElement) do: [:g |
		self createFillFromSVGRadialGradient: g]