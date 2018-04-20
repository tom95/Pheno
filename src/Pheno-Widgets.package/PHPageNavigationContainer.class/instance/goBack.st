initialize-release
goBack

	self startLoadingOperation.
	
	^ navigationStack goBack
		then: [self stopLoadingOperation]
		ifRejected: [self stopLoadingOperation]