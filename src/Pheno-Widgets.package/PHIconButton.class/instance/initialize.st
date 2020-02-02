initialize-release
initialize

	super initialize.
	
	self
		align: #(start start);
		addStyleClass: #iconButton;
		addFallbackStyles: ((PHStyle for: #iconButton) color: #inherit)