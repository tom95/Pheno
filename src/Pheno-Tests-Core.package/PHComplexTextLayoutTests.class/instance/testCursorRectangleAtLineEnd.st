as yet unclassified
testCursorRectangleAtLineEnd

	| layout |
	layout := PHComplexTextLayout new
		font: PHFakeFont new;
		width: PHFakeFont characterWidth * 5;
		text: 'aaa aaaa'.
	
	(self expect: (layout rectangleForIndex: 0) origin) to equal: layout lines first origin.
	(self expect: (layout rectangleForIndex: 3) origin) to equal: layout lines second origin