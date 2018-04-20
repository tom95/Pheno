private
stopLoadingOperation
	
	loadingOperationCounter := loadingOperationCounter - 1.
	loadingOperationCounter < 0 ifTrue: [self error: 'Stop loading called too many times!'].
	loadingOperationCounter = 0 ifTrue: [self remove: self loadingWidget]