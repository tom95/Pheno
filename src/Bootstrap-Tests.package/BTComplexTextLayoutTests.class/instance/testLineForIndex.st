as yet unclassified
testLineForIndex

	| layout |
	layout := BTComplexTextLayout new
		font: BTFakeFont new;
		width: BTFakeFont characterWidth * 5;
		text: (String new: 3 * 5 withAll: $a).
	
	(self expect: (layout lineForIndex: 0)) to be: layout lines first.
	(self expect: (layout lineForIndex: 5)) to be: layout lines first.
	(self expect: (layout lineForIndex: 6)) to be: layout lines second.
	(self expect: (layout lineForIndex: 10)) to be: layout lines second.
	(self expect: (layout lineForIndex: 11)) to be: layout lines third.
	(self expect: (layout lineForIndex: 30000)) to be: layout lines third