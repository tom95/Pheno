drawing
initialize

	super initialize.
	
	self
		addStyleClass: #divider;
		addFallbackStyles: ((PHStyle for: #divider)
			borderWidth: 1;
			borderColor: #ccc)