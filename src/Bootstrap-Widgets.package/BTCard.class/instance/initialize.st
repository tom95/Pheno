initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #card;
		addFallbackStyles: ((BTStyle for: #card)
			border: 1 color: #ccc;
			borderRadius: 5;
			backgroundColor: #fff);
		withLayout;
		vertical: true