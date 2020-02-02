tests
testLineBreakChar

	| layout |
	layout := PHComplexTextLayout new
		font: PHFakeFont new;
		width: PHFakeFont characterWidth * 5;
		text: 'a', String cr, 'a'.
	
	(self expect: layout extent y) to equal: PHFakeFont fontHeight * 2