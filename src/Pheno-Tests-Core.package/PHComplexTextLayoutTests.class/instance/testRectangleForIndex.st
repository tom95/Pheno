tests
testRectangleForIndex

	| layout string |
	string := String new: 7 withAll: $a.
	layout := PHComplexTextLayout new
		font: PHFakeFont new;
		text: string;
		width: PHFakeFont characterWidth * 100.
	
	0 to: string size + 1 do: [:index |
		(self expect: (layout rectangleForIndex: index)) to equal: ((index min: string size) * PHFakeFont characterWidth @ 0 extent: 0 @ PHFakeFont fontHeight)]