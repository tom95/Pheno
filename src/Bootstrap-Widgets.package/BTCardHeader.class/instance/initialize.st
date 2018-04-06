initialize-release
initialize

	super initialize.

	self
		align: #(fill start);
		vertical: false;
		addStyleClass: #cardHeader;
		addFallbackStyles: ((BTStyle for: #cardHeader)
			spacing: 15;
			padding: 20 @ 12)