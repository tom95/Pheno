as yet unclassified
testRectangleConvert

	| style |
	style := PHStyle forAny.
	
	(self expect: (style numberToRectangle: 5)) to equal: (Rectangle left: 5 right: 5 top: 5 bottom: 5).
	(self expect: (style numberToRectangle: 5 @ 6)) to equal: (Rectangle left: 5 right: 5 top: 6 bottom: 6)