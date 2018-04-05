accessing
drawSubmorphsOn: aCanvas 
	"Display the receiver."
	
	|balloonCanvas|
	balloonCanvas := aCanvas asBalloonCanvas.
	super drawSubmorphsOn: balloonCanvas