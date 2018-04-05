accessing
drawOn: aCanvas 
	"Display the receiver."
	
	super drawOn: aCanvas.
	aCanvas frameAndFillRectangle: self bounds fillColor: self color borderWidth: 1 borderColor: Color black