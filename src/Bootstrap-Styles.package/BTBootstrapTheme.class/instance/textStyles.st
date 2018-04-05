styles
textStyles
	
	(self for: #label)
		color: #inherit.
	
	(self for: #(label selection))
		backgroundColor: (self defaultSelectedColor alpha: 0.4).
	
	(self for: (BTClassSelector for: #(label selection) state: #backdrop))
		backgroundColor: (Color lightGray alpha: 0.6).
	
	(self for: #caret)
		color: Color red.
		
	(self for: #textArea)
		padding: (Rectangle left: 0.5rem right: 0 top: 0.5rem bottom: 0)