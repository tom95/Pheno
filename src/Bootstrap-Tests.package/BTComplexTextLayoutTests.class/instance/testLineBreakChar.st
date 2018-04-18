as yet unclassified
testLineBreakChar

	| layout |
	layout := BTComplexTextLayout new
		font: BTFakeFont new;
		width: BTFakeFont characterWidth * 5;
		text: 'a', String cr, 'a'.
	
	(self expect: layout extent y) to equal: BTFakeFont fontHeight * 2