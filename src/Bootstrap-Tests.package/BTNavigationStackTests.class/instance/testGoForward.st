as yet unclassified
testGoForward
	stack
		open: page1 with: nil;
		open: page2 with: nil.
	
	(self expect: stack goBack) to resolveWith: page1.
	
	(self expect: stack canGoForward) to be: true.
	(self expect: stack goForward) to resolveWith: page2