as yet unclassified
initialize

	super initialize.
	
	self
		align: #(start start);
		addStyleClass: #iconButton;
		addFallbackStyles: ((PHStyle for: #iconButton) color: #inherit)