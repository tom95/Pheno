as yet unclassified
testExtent

	| layout |
	layout := PHComplexTextLayout new
		font: PHFakeFont new;
		width: 500;
		text: (String new: 10 withAll: $a).
	
	(self expect: layout extent) to equal: (layout text size * PHFakeFont characterWidth @ PHFakeFont fontHeight)