as yet unclassified
buttonGroupStyles

	(self for: #buttonGroup)
		spacing: 0.
	
	(self for: #buttonGroup asStyle > #button)
		borderRadius: 0;
		borderWidth: (Rectangle left: 1 right: 0 top: 1 bottom: 1).
	
	(self for: #buttonGroup asStyle > (PHClassSelector for: #button state: #firstChild))
		borderRadius: (Rectangle left: 0.25rem right: 0 top: 0.25rem bottom: 0);
		borderWidth: (Rectangle left: 1 right: 0 top: 1 bottom: 1).
	
	(self for: #buttonGroup asStyle > (PHClassSelector for: #button state: #lastChild))
		borderRadius: (Rectangle left: 0 right: 0.25rem top: 0 bottom: 0.25rem);
		borderWidth: 1.
	
	"(self for: #buttonGroup asStyle > (PHClassSelector for: #button state: #hover))
		borderWidth: 1"