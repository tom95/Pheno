as yet unclassified
testTooMuchForward
	stack
		open: page1 with: nil;
		open: page2 with: nil.
	
	(self expect: [stack goForward: 42]) to not raise: Error