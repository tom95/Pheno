as yet unclassified
menuStyles

	(self for: #menu)
		padding: 1 @ 0.25rem;
		borderRadius: 0.25rem;
		backgroundColor: #f5f5f5;
		margin: (Rectangle left: 0 right: 0 top: 0.25rem bottom: 0);
		border: 1 color: #b8b8b8;
		color: self defaultTextColor.
	
	(self for: #menuItemSeparator)
		border: 1 color: #ccc;
		margin: 0.1rem @ 0.25rem.
	
	(self for: #menuItem)
		padding: (Rectangle left: 1.5rem right: 0.5rem top: 1 bottom: 1).
	
	(self for: #menuItem state: #active)
		backgroundColor: #d7d7d7.
		
	(self for: #menuItem state: #disabled)
		color: #'999'