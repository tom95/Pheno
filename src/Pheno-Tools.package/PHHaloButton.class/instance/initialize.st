as yet unclassified
initialize

	super initialize.
	
	hasMouse := false.
	
	self
		addStyleClass: #haloButton;
		removeStyleClass: #button;
		addFallbackStyles: ((PHStyle for: #haloButton)
			backgroundColor: #'333';
			color: #fff;
			borderRadius: 999;
			padding: 10;
			border: 1 color: Color black)