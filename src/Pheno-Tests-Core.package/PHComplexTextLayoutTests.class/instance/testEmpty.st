as yet unclassified
testEmpty

	| layout |
	layout := PHComplexTextLayout new
		font: PHFakeFont new;
		width: 500;
		text: ''.
	
	(self expect: layout lines size) to equal: 1