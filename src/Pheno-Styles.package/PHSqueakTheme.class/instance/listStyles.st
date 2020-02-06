styles
listStyles

	| selectionColor |
	selectionColor := Color r: 0.72 g: 0.72 b: 0.9.
	
	(self for: #list)
		backgroundColor: #fff.
	
	(self for: #listItem)
		padding: 3 @ 0.
	
	(self for: #listItem asStyle/#active, #listItem/#(hover active))
		backgroundColor: selectionColor.
	
	(self for: #(listItem listMultiselection))
		backgroundColor: selectionColor lighter.
	
	(self for: #(listItem listFilter))
		backgroundColor: Color yellow paler.
		
	(self for: #listItem asStyle/#hover)
		backgroundColor: ((Color gray: 0.7) alpha: 0.5).
	
	(self for: #treeLine)
		borderColor: Color veryLightGray