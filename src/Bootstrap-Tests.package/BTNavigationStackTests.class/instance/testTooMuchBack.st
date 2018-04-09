as yet unclassified
testTooMuchBack
	stack
		open: page1 with: nil;
		open: page2 with: nil.
	
	(self expect: [stack goBack: 42]) to not raise: Error