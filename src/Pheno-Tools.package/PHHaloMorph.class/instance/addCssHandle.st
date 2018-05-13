as yet unclassified
addCssHandle

	| handle |
	handle := (PHHaloButton icon: #iconEyedropper)
		resizeToPreferred;
		addStyleClass: #haloCssHandle;
		center: self target center;
		right: self target left.
	
	handle
		when: #mouseUp send: #doCss:with: to: self.
	
	self addMorph: handle