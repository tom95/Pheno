private
startLoadingOperation
	
	loadingOperationCounter = 0 ifTrue: [self add: self loadingWidget at: 1].
	loadingOperationCounter := loadingOperationCounter + 1