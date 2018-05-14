as yet unclassified
leavePresentationMode

	self remove: toolbar.
	self addMorphFront: (toolbar := self createToolbar)