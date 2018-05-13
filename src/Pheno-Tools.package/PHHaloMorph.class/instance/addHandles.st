as yet unclassified
addHandles

	self
		addDismissHandle;
		addGrowHandle;
		addDebugHandle;
		addDuplicateHandle;
		addGrabHandle;
		addLayoutHandle;
		addCssHandle.
	
	self target wantsFontHaloHandle ifTrue: [self addFontHandle]