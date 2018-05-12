as yet unclassified
addDismissHandle

	| handle |
	handle := (PHHaloButton icon: #iconRemove)
		resizeToPreferred;
		addStyleClass: #haloDismissHandle;
		bottomRight: self target topLeft.
	
	handle when: #clickedWithEvent send: #maybeDismiss:with: to: self withArguments: {nil. handle}.
			
	self addMorph: handle