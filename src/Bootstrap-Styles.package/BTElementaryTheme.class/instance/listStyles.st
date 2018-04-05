as yet unclassified
listStyles

	(self for: #list)
		backgroundColor: "Color white"#f2f2f2;
		border: 1 color: self borderColor.
	
	(self for: #tree)
		padding: 1.
		
	(self for: #listItem)
		padding: 0.5rem.
	
	(self for: (BTClassSelector for: #listItem state: #(active hover)), (BTClassSelector for: #listItem state: #active))
		backgroundColor: (GradientFillStyle colors: {Color fromString: '#c4c4c4'. Color fromString: '#d6d6d6'});
		border: 0 @ 1 color: self borderColor.
	
	(self for: #listItem state: #hover)
		backgroundColor: ((Color fromString: '#bbbbbb') alpha: 0.4).
	
	(self for: #(listItem listFilter))
		backgroundColor: #ffd866;
		color: #'000';
		border: 1 color: #D8B346;
		borderRadius: 0.125rem.
	
	(self for: #(listItem listMultiSelection))
		backgroundColor: #ccc.
	
	(self for: #treeLine)
		borderColor: #ccc