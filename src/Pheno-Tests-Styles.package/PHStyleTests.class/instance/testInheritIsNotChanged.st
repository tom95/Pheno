as yet unclassified
testInheritIsNotChanged

	| style |
	style := PHStyle forAny.
	
	(self expect: (style numberToRectangle: #inherit)) to be: #inherit.
	(self expect: (style hexToColor: #inherit)) to be: #inherit