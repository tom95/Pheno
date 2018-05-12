as yet unclassified
addLayoutHandle

	| handle |
	handle := (PHHaloButton icon: #iconTh_large)
		resizeToPreferred;
		addStyleClass: #haloLayoutHandle;
		topRight: self target bottomLeft.
	
	handle
		when: #mouseUp send: #doLayout:with: to: self.
	
	self addMorph: handle