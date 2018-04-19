as yet unclassified
initialize

	super initialize.
	
	(self for: #list asStyle, #textArea)
		border: 1 color: (Color gray: 0.6);
		backgroundColor: Color white.
	
	(self for: #keyboardFocusIndicator)
		border: 3 color: (TranslucentColor r: 0.3 g: 0.5 b: 0.5 alpha: 0.5).
	
	self
		textStyles;
		windowStyles;
		listStyles;
		buttonStyles;
		menuStyles;
		dockingBarStyles