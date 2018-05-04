as yet unclassified
testLineIndices

	| layout string |
	string := String new: 7 withAll: $a.
	layout := PHComplexTextLayout new
		font: PHFakeFont new;
		text: string;
		width: PHFakeFont characterWidth * 100.
	
	(self expect: (layout lines first start to: layout lines first stop)) to equal: (1 to: string size)