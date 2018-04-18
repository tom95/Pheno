as yet unclassified
testExtent

	| layout |
	layout := BTComplexTextLayout new
		font: BTFakeFont new;
		width: 500;
		text: (String new: 10 withAll: $a).
	
	(self expect: layout extent) to equal: (layout text size * BTFakeFont characterWidth @ BTFakeFont fontHeight)