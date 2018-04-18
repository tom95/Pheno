as yet unclassified
testCursorRectangleAtLineEnd

	| layout |
	layout := BTComplexTextLayout new
		font: BTFakeFont new;
		width: BTFakeFont characterWidth * 5;
		text: 'aaa aaaa'.
	
	(self expect: (layout rectangleForIndex: 0) origin) to equal: layout lines first origin.
	(self expect: (layout rectangleForIndex: 3) origin) to equal: layout lines second origin