initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #link;
		addFallbackStyles: ((PHStyle for: #link) color: Color blue)