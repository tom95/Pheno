as yet unclassified
addHandles

	self
		addDismissHandle;
		addGrowHandle;
		addDebugHandle;
		addDuplicateHandle;
		addGrabHandle;
		addLayoutHandle.
	
	self target wantsFontHaloHandle ifTrue: [self addFontHandle]