layout
layoutChanged

	requestCache clear.

	super layoutChanged.
	
	" bug in morphic. layoutChanged is not propagated to my owner if fullBounds of me is already nil "
	(fullBounds isNil and: [self owner notNil]) ifTrue: [self owner layoutChanged]