initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #popover;
		addFallbackStyles: ((PHStyle for: #popover)
			padding: 14 @ 9;
			backgroundColor: #fff;
			border: 1 color: #ccc);
		minSize: self arrowTipSize + (self styleContext borderRadius directionsAsPoint x) @ 0