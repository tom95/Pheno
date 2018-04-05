as yet unclassified
textStyles

	(self for: #label)
		color: #inherit.
	
	(self for: #(label selection))
		backgroundColor: (self defaultSelectedColor alpha: 0.4).
	
	(self for: (BTClassSelector for: #(label selection) state: #backdrop))
		backgroundColor: (Color lightGray alpha: 0.6).
	
	(self for: #(textArea caret))
		color: Color red.
	
	(self for: #textArea)
		backgroundColor: #fff;
		color: self defaultTextColor;
		border: 1 color: #a6a6a6;
		padding: (Rectangle left: 0.75rem right: 0 top: 0.75rem bottom: 0)