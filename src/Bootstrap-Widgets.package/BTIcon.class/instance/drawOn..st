drawing
drawOn: aCanvas

	self styleContext color ~= svgColor ifTrue: [self svgColor: self styleContext color].
	aCanvas translucentImage: (self cachedFormFor: self extent) at: self layoutBounds origin