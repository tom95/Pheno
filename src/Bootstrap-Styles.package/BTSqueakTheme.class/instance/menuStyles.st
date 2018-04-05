as yet unclassified
menuStyles

	(self for: #menu asStyle, #dockingBar)
		border: 1 color: Color gray;
		backgroundColor: (Color gray: 0.9);
		padding: 2.
	
	(self for: #menuItem)
		padding: 4 @ 0.
	
	(self for: #menuItem asStyle/#disabled)
		color: Color gray.
	
	(self for: #menuItem asStyle/#active)
		backgroundColor: (Color r: 0.4 g: 0.5 b: 0.7);
		color: Color white.
	
	(self for: #menuItemSeparator)
		border: 2 color: (Color gray: 0.9);
		margin: 2.