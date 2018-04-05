initialize-release
initialize
	super initialize.

	self
		addStyleClass: #badge;
		addFallbackStyles: ((BTStyle for: #badge)
			padding: 6 @ 4;
			backgroundColor: #'555';
			color: #fff);
		withLayout;
		align: #(start start)