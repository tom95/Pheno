styles
windowStyles

	(self for: #window)
		backgroundColor: #f2f2f2;
		"border: 1 color: #c6c6c6;"
		border: 1 color: #'d0d0d0';
		color: self defaultTextColor;
		borderRadius: self borderRadius;
		spacing: 0.
	
	(self for: #windowHeader)
		spacing: 1.0rem;
		color: self lightTextColor;
		backgroundColor: (GradientFillStyle colors: {Color fromString: '#e6e6e6'. Color fromString: '#c4c4c4'});
		padding: 0.75rem;
		border: (Rectangle left: 0 right: 0 top: 0 bottom: 2) color: #'999';
		borderRadius: (Rectangle left: 0 right: self borderRadius top: self borderRadius bottom: 0).
	
	(self for: #collapsed asStyle > #windowHeader)
		borderRadius: self borderRadius.
	
	(self for: #dialogBody)
		spacing: 1.0rem;
		padding: 0.75rem.
	
	(self for: #(windowButton))
		color: #'6f6f6f'.
	
	(self for: #(windowCloseButton))
		icon: #iconTimes.
	(self for: #(windowExpandButton))
		icon: #iconWindow_maximize.
	(self for: #(windowUnexpandButton))
		icon: #iconWindow_restore.
	(self for: #(windowMenuButton))
		icon: #iconCaret_down.
	(self for: #(windowCollapseButton))
		icon: #iconCompress.
	(self for: #(windowUncollapseButton))
		icon: #iconExpand