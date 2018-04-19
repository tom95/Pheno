initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #listGroup;
		addFallbackStyles: ((PHStyle for: #listGroup) spacing: 0);
		withLayout;
		vertical: true