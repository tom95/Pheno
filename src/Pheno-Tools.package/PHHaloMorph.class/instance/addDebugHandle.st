as yet unclassified
addDebugHandle

	| handle |
	handle := (PHHaloButton icon: #iconBug)
		resizeToPreferred;
		addStyleClass: #haloDebugHandle;
		center: self target center;
		left: self target right.
	
	handle when: #mouseDown send: #doDebug:with: to: self withArguments: {nil. handle}.
	
	self addMorph: handle