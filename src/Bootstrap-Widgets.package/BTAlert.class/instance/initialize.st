initialize-release
initialize

	super initialize.
	
	self
		withLayout;
		addStyleClass: #alert;
		addFallbackStyles: ((BTStyle for: #alert)
			border: 1 color: #ccc;
			borderRadius: 5;
			padding: 20 @ 12;
			backgroundColor: #fff);
		align: #(fill start);
		vertical: true