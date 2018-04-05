colors
initialize

	super initialize.
	
	self
		addStyleClass: #icon;
		addFallbackStyles: ((BTStyle for: #icon)
			color: #inherit)