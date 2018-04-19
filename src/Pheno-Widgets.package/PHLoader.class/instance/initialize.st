initialize-release
initialize

	super initialize.
	
	angle := 0.
	
	self
		addStyleClass: #loader;
		svg: PHIcon iconSpinner svg;
		align: #(center center)