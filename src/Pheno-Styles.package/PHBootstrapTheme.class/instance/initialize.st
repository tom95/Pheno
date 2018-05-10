initialize-release
initialize

	super initialize.
	
	self forAny
		spacing: self defaultSpacing.
	
	(self for: #link)
		color: #'0275d8'.
	
	(self for: #selection)
		color: #'3c83cf'.
	
	self
		badgeStyles;
		alertStyles;
		buttonStyles;
		dockingBarStyles;
		menuStyles;
		buttonGroupStyles;
		listStyles;
		textStyles;
		windowStyles;
		cardStyles;
		imageStyles;
		tabStyles;
		listGroupStyles;
		checkboxStyles;
		scrollAreaStyles;
		popoverStyles;
		tooltipStyles