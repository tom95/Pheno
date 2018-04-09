as yet unclassified
testOpen
	stack open: page1 with: nil.
	
	(self expect: stack canGoForward) to be: false.
	(self expect: stack canGoBack) to be: false