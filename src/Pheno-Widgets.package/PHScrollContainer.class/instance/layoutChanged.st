geometry
layoutChanged

	super layoutChanged.
	
	self owner ifNotNil: [self owner layoutChanged]