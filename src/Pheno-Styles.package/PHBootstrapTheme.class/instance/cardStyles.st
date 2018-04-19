styles
cardStyles

	(self for: #card)
		border: 1 color: #ccc;
		borderRadius: 0.5rem;
		padding: 1;
		backgroundColor: #fff.
	
	(self for: #cardHeader)
		backgroundColor: #f7f7f7;
		borderRadius: (Rectangle left: 0 right: 0.5rem top: 0.5rem bottom: 0);
		border: (Rectangle left: 0 right: 0 top: 0 bottom: 1) color: #ccc.
	
	(self for: #card asStyle > #collapsible)
		padding: (Rectangle left: self defaultSpacing right: self defaultSpacing top: 0 bottom: self defaultSpacing)