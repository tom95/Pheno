as yet unclassified
addFontHandle

	| handle |
	handle := (PHHaloButton icon: #iconFont)
		resizeToPreferred;
		addStyleClass: #haloFontHandle;
		center: self target center;
		top: self target bottom.
	
	handle
		when: #mouseUp send: #doFont:with: to: self.
	
	self addMorph: handle