as yet unclassified
enterPresentationMode

	self remove: toolbar.
	self addMorphFront: (toolbar := self createMinimalToolbar).
	self owner fullScreen