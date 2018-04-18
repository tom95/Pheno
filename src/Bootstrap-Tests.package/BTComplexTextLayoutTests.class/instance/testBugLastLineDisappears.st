as yet unclassified
testBugLastLineDisappears

	| layout |
	layout := BTComplexTextLayout new
		font: BTFakeFont new;
		width: BTFakeFont characterWidth * 5;
		text: 'aaa aaaa'.
	
	(self expect: layout lines size) to equal: 2