as yet unclassified
testLimitedWidth

	| layout string |
	string := String new: 8 withAll: $a.
	layout := PHComplexTextLayout new
		font: PHFakeFont new;
		width: PHFakeFont characterWidth * (string size - 1);
		text: string.
	
	(self expect: layout extent) to equal: (layout width @ (PHFakeFont fontHeight * 2))