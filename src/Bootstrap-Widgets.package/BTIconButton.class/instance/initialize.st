as yet unclassified
initialize

	super initialize.
	
	self
		align: #(start start);
		addStyleClass: #iconButton;
		addFallbackStyles: ((BTStyle for: #iconButton) color: #inherit)