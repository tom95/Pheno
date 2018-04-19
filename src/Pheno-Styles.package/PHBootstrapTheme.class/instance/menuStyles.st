styles
menuStyles

	(self for: #menu)
		borderRadius: 0.25rem;
		backgroundColor: #f2f2f2;
		border: 1 color: #e0e0e0;
		spacing: 0;
		margin: (Rectangle left: 0 right: 0 top: 0.1rem bottom: 0);
		padding: (Rectangle left: 1 right: 1 top: 0.25rem bottom: 0.25rem);
		color: self defaultTextColor.
	
	(self for: #menu asStyle > #menuTitle)
		color: #inherit;
		padding: 0 @ 0.375rem.
	
	(self for: #menuItemSeparator)
		border: 1 color: #ccc;
		margin: 0 @ 0.25rem.
	
	(self for: #menuItem)
		padding: (Rectangle left: 1.5rem right: 0.5rem top: 0 bottom: 0).
	
	(self for: #(menuItem dropdownItem))
		padding: (24 @ 3).
	
	(self for: #menuItem state: #active)
		color: #fff;
		backgroundColor: self defaultSelectedColor.

	(self for: #menuItem state: #hover)
		backgroundColor: #ccc.
	
	(self for: #menuItem state: #disabled)
		color:  #'999'