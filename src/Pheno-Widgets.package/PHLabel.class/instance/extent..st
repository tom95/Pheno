geometry
extent: aPoint

	layoutWidth := aPoint x - self paddingAsPoint x withScalingFactor.
	self layout width: layoutWidth.
	super extent: aPoint