as yet unclassified
testOpenMultiple
	stack
		open: page1 with: nil;
		open: page2 with: nil.
	
	(self expect: stack canGoForward) to be: false.
	(self expect: stack canGoBack) to be: true