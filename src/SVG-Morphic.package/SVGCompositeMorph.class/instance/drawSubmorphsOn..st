as yet unclassified
drawSubmorphsOn: aCanvas 
	"Display the receiver."
	
	(self composedStyle at: 'display')
		ifFalse: [^self].
	aCanvas asBalloonCanvas preserveStateDuring:[:balloonCanvas|
		balloonCanvas
			aaLevel: 3.
		super drawSubmorphsOn: balloonCanvas]