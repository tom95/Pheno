accessing
extent

	^ extent ifNil: [self processLayout. extent]