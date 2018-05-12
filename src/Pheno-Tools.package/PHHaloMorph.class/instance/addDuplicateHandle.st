as yet unclassified
addDuplicateHandle

	| handle |
	handle := (PHHaloButton icon: #iconFiles_o)
		resizeToPreferred;
		addStyleClass: #haloDuplicateHandle;
		bottomLeft: self target topRight.
	
	handle when: #mouseDown send: #doDup:with: to: self withArguments: {nil. handle}.
	
	self addMorph: handle