colors
svgColor: aColor

	self svg allMorphsDo: [:morph | morph style at: 'fill' put: aColor].
	self svg changed