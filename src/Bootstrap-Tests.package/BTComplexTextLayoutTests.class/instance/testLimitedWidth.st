as yet unclassified
testLimitedWidth

	| layout string |
	string := String new: 8 withAll: $a.
	layout := BTComplexTextLayout new
		font: BTFakeFont new;
		width: BTFakeFont characterWidth * (string size - 1);
		text: string.
	
	(self expect: layout extent) to equal: (layout width @ (BTFakeFont fontHeight * 2))