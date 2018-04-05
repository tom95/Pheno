initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #textArea;
		addFallbackStyles: ((BTStyle for: #textArea)
			padding: 12 @ 8;
			color: Color black;
			backgroundColor: Color white;
			border: 1 color: Color black)