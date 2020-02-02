updating
updateBoxes

	self
		updateCollapseBox;
		updateExpandBox.
	
	menuBox labelGraphic: (self createBoxForm: #windowMenuButton).
	closeBox ifNotNil: [closeBox labelGraphic: (self createBoxForm: #windowCloseButton)]