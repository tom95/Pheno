geometry
extent: aPoint

	super extent: aPoint.
	
	container
		position: self position + self paddingAsRectangle topLeft;
		extent: (aPoint - self paddingAsPoint max: 0 asPoint).

	container firstSubmorph extent: container extent