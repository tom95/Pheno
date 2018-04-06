initialize-release
initialize

	super initialize.
	
	angle := 0.
	
	self
		addStyleClass: #loader;
		svg: BTIcon iconSpinner svg;
		align: #(center center)