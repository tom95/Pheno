initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #link;
		addFallbackStyles: ((BTStyle for: #link) color: Color blue)