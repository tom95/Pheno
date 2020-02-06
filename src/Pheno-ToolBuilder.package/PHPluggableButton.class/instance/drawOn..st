drawing
drawOn: aCanvas

	self styleContext drawFullOn: aCanvas bounds: self bounds.
	
	aCanvas
		translateBy: self labelOffset
		during: [:c |
			self label isMorph
				ifTrue: [self drawMorphLabelOn: c]
				ifFalse: [self drawLabelOn: c]].