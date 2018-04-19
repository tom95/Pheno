as yet unclassified
testGoBack
	stack
		open: page1 with: nil;
		open: page2 with: nil.
	
	(self expect: stack canGoForward) to be: false.
	
	(self expect: stack goBack) to resolveWith: page1.
	
	(self expect: stack canGoBack) to be: false