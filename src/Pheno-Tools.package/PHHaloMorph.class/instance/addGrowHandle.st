as yet unclassified
addGrowHandle

	| handle |
	handle := (PHHaloButton icon: #iconExpand)
		resizeToPreferred;
		addStyleClass: #haloGrowHandle;
		topLeft: self target bottomRight.
	
	handle
		when: #mouseDown send: #startGrow:with: to: self withArguments: {nil. handle};
		when: #mouseMove send: #doGrow:with: to: self withArguments: {nil. handle};
		when: #mouseUp send: #endInteraction: to: self.
	
	self addMorph: handle