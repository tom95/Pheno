tests
testExtent

	layout text: 'hi'; width: -1.
	
	(self expect: layout extent x) to beLessThan: PHWidget maximumWidth.
	
	layout width: 100; alignment: #right.
	
	(self expect: layout extent x) to equal: 100