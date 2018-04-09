as yet unclassified
testInitialDoesntCrash
	stack goBack.
	(self expect: [stack goBack]) to not raise: Error.  
	(self expect: [stack goForward]) to not raise: Error