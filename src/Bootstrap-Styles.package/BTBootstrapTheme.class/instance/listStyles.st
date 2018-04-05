styles
listStyles

	(self for: #list)
		color: self defaultTextColor.
	
	(self for: (BTClassSelector for: #listItem state: #(active hover)), (BTClassSelector for: #listItem state: #active))
		backgroundColor: self defaultSelectedColor;
		color: #fff;
		borderRadius: 0.25rem.
	
	(self for: #listItem state: #hover)
		backgroundColor: (Color gray alpha: 0.4);
		borderRadius: 0.25rem.
	
	(self for: #(listItem listMultiSelection))
		backgroundColor: self defaultSelectedColor lighter.
	
	(self for: #(listItem listFilter))
		backgroundColor: #ffd866;
		color: #'000';
		border: 1 color: #D8B346;
		borderRadius: 0.125rem.
	
	(self for: #treeLine)
		borderColor: #ccc