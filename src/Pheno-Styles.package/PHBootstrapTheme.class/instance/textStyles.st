styles
textStyles
	
	(self for: #label)
		color: #inherit.
	
	(self for: #(label selection))
		backgroundColor: (self defaultSelectedColor alpha: 0.4).
	
	(self for: (PHClassSelector for: #(label selection) state: #backdrop))
		backgroundColor: (Color lightGray alpha: 0.6).
	
	(self for: #caret)
		color: Color red.
	
	(self for: #textArea)
		padding: (Rectangle left: 0.75rem right: 0.75rem top: 0.375rem bottom: 0.375rem);
		borderRadius: 0.25rem;
		border: 1 color: #ced4da.
	
	(self for: #textArea state: #active)
		borderColor: #'80bdff'