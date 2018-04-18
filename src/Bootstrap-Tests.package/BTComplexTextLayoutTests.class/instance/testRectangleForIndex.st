as yet unclassified
testRectangleForIndex

	| layout string |
	string := String new: 7 withAll: $a.
	layout := BTComplexTextLayout new
		font: BTFakeFont new;
		text: string;
		width: BTFakeFont characterWidth * 100.
	
	0 to: string size + 1 do: [:index |
		(self expect: (layout rectangleForIndex: index)) to equal: ((index min: string size) * BTFakeFont characterWidth @ 0 extent: 0 @ BTFakeFont fontHeight)]