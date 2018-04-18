as yet unclassified
testCursorFromPosition

	| layout string |
	string := String new: 7 withAll: $a.
	layout := BTComplexTextLayout new
		font: BTFakeFont new;
		text: string;
		width: BTFakeFont characterWidth * 100.
	
	0 to: string size + 1 do: [:index |
		(self expect: (layout indexForPosition: (BTFakeFont characterWidth * (index + 0.5)) @ 5)) to containExactly: {true. index min: string size. 0}]