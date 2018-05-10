initialize-release
initialize

	super initialize.
	
	self
		removeStyleClass: #popover;
		addStyleClass: #tooltip;
		addFallbackStyles: ((PHStyle for: #tooltip)
			backgroundColor: #'000';
			color: #fff;
			padding: 6)