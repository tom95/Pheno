styles
textStyles

	(self for: #label)
		color: #inherit.
	
	(self for: #(label selection) asStyle, #(textArea selection))
		backgroundColor: (TranslucentColor r: 0.0 g: 0.0 b: 0.8 alpha: 0.2).
	
	(self for: #(label selection) asStyle/#backdrop, #(textArea selection)/#backdrop)
		backgroundColor: (Color gray: 0.9).
	
	(self for: #caret)
		color: Color red.