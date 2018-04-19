as yet unclassified
buttonStyles

	| baseBorderColor baseColor |
	baseColor := (Color gray: 0.91).
	baseBorderColor := Color gray.

	(self for: #button)
		border: 1 color: baseBorderColor;
		backgroundColor: baseColor.
		
	(self for: #button asStyle/#hover)
		borderColor: (baseBorderColor adjustBrightness: -0.1);
		backgroundColor: (baseColor adjustBrightness: -0.1).
	
	(self for: #button asStyle/#(hover active), #button/#active, #button/#selected)
		borderColor: (baseBorderColor adjustBrightness: -0.2);
		backgroundColor: (baseColor adjustBrightness: -0.2).
	
	(self for: #buttonGroup)
		spacing: 1