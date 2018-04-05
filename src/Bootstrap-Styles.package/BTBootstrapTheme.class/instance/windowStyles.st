styles
windowStyles

	(self for: #window)
		backgroundColor: #fff;
		color: #'212529';
		padding: ProportionalSplitterMorph gripThickness;
		color: self defaultTextColor;
		borderRadius: 0.5rem;
		spacing: ProportionalSplitterMorph gripThickness;
		border: 1 color: #ccc.
	
	(self for: #windowHeader)
		spacing: 0.375rem;
		padding: (Rectangle left: 0 right: 0 top: 0 bottom: 0.5rem).
	
	(self for: #(window collapsed))
		padding: 0.5rem.
	
	(self for: #collapsed asStyle > #windowHeader)
		padding: 0.
	
	(self for: #windowCloseButton)
		icon: #iconCircle;
		color: #fe6356.
	(self for: #windowExpandButton asStyle, #windowUnexpandButton)
		icon: #iconCircle;
		color: #a9dc76.
	(self for: #windowMenuButton)
		icon: #iconCircle;
		color: #'78dce8'.
	(self for: #windowCollapseButton asStyle, #windowUncollapseButton)
		icon: #iconCircle;
		color: #ffbc02