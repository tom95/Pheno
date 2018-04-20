initialize-release
goForward

	self startLoadingOperation.
	
	^ navigationStack goForward
		then: [self stopLoadingOperation]
		ifRejected: [self stopLoadingOperation]