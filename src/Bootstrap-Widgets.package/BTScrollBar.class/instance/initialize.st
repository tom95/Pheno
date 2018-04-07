initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #scrollBar;
		addFallbackStyles: ((BTStyle for: #scrollBar)
			" padding sets the used width/height. left is for vertical, top for horizontal bars "
			padding: 10 @ 10;
			backgroundColor: ((Color fromString: '333333') alpha: 0.8));
		on: #mouseMove send: #scroll: to: self