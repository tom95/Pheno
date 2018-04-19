as yet unclassified
testForwardDiscarded
	stack
		open: page1 with: nil;
		open: page2 with: nil.
	
	(self expect: stack goBack) to resolveWith: page1.
	(self expect: stack canGoForward) to be: true.
	
	stack open: page3 with: nil.
	
	(self expect: stack canGoForward) to be: false