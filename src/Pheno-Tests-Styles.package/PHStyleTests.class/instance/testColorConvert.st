tests
testColorConvert

	| style |
	style := PHStyle forAny.
	
	(self expect: (style hexToColor: #f00)) to equal: Color red.
	(self expect: (style hexToColor: #ff0000)) to equal: Color red.
	(self expect: (style hexToColor: 'red')) to equal: Color red