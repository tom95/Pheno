tests
testBugLastLineDisappears

	| layout |
	layout := PHComplexTextLayout new
		font: PHFakeFont new;
		width: PHFakeFont characterWidth * 5;
		text: 'aaa aaaa'.
	
	(self expect: layout lines size) to equal: 2