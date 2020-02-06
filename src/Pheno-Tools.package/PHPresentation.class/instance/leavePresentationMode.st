presenting
leavePresentationMode

	self remove: toolbar.
	self addMorphFront: (toolbar := self createToolbar).
	DisplayScreen fullScreenOff.
	previousWindow addMorphFront: self.
	TheWorldMainDockingBar showWorldMainDockingBar: true