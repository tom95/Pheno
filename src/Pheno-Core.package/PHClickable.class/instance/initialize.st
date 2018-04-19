initialize-release
initialize

	super initialize.
	
	hadMouseDown := false.
	
	self
		hovered: false;
		active: false;
		withLayout