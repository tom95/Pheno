initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #listGroup;
		addFallbackStyles: ((BTStyle for: #listGroup) spacing: 0);
		withLayout;
		vertical: true