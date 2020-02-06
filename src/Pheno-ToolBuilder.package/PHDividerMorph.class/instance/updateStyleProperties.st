styles
updateStyleProperties

	super updateStyleProperties.

	" width will be computed, we are hResizing #spaceFill "
	self extent: 0 @ (self styleContext margin top + self styleContext margin bottom + self styleContext padding top + self styleContext padding bottom + self styleContext borderWidth top) withScalingFactor