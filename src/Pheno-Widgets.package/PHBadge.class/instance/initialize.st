initialize-release
initialize
	super initialize.

	self
		addStyleClass: #badge;
		addFallbackStyles: ((PHStyle for: #badge)
			padding: 6 @ 4;
			backgroundColor: #'555';
			color: #fff);
		withLayout;
		align: #(start start)