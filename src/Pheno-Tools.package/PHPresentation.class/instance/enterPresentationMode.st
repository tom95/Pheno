as yet unclassified
enterPresentationMode

	self remove: toolbar.
	self addMorphFront: (toolbar := self createMinimalToolbar).
	previousWindow := self owner.
	DisplayScreen fullScreenOn.
	TheWorldMainDockingBar showWorldMainDockingBar: false.
	self
		openInWorld;
		extent: World extent; position: 0 @ 0