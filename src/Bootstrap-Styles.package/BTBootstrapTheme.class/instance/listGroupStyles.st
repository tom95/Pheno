styles
listGroupStyles

	(self for: #listGroup)
		spacing: 0.
	
	(self for: #listGroupItem)
		border: 1 color: #ccc.
	
	(self for: #(listGroupItem clickable) state: #hover)
		backgroundColor: #f8f9fa.
	
	(self for: #(listGroupItem clickable) state: #(active hover))
		backgroundColor: #e9ecef.
	
	(self for: #listGroup asStyle > #listGroupItem)
		borderWidth: (Rectangle left: 1 right: 1 top: 0 bottom: 1).
	
	(self for: #listGroup asStyle > (BTClassSelector for: #listGroupItem state: #firstChild))
		borderWidth: 1;
		borderRadius: (Rectangle left: 0 right: 0.25rem top: 0.25rem bottom: 0).
	
	(self for: #listGroup asStyle > (BTClassSelector for: #listGroupItem state: #lastChild))
		borderRadius: (Rectangle left: 0.25rem right: 0 top: 0 bottom: 0.25rem).