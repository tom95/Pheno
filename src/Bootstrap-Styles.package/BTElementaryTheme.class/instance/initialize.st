as yet unclassified
initialize

	super initialize.
	
	(self for: #selection)
		color: self defaultSelectedColor.
	
	self
		applicationStyles;
		windowStyles;
		buttonStyles;
		dockingBarStyles;
		menuStyles;
		buttonGroupStyles;
		scrollStyles;
		listStyles;
		textStyles