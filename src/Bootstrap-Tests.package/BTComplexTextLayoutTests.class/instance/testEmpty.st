as yet unclassified
testEmpty

	| layout |
	layout := BTComplexTextLayout new
		font: BTFakeFont new;
		width: 500;
		text: ''.
	
	(self expect: layout lines size) to equal: 1