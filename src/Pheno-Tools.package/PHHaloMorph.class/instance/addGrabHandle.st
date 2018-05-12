as yet unclassified
addGrabHandle
	
	| handle |
	handle := (PHHaloButton icon: #iconHand_rock_o)
		resizeToPreferred;
		addStyleClass: #haloGrabHandle;
		center: self target center;
		bottom:  self target top.
	
	handle when: #mouseDown send: #doGrab:with: to: self withArguments: {nil. handle}.
	
	self addMorph: handle