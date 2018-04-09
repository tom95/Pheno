utilities
horizontalAndVerticalDo: aBlock
	isVerticalTest := false.
	aBlock value: false.
	
	isVerticalTest := true.
	aBlock value: true