colors
initialize

	super initialize.
	
	self
		addStyleClass: #icon;
		addFallbackStyles: ((PHStyle for: #icon)
			color: #inherit)