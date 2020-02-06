accessing
percentage: aNumber

	percentage := aNumber.
	
	aNumber = 1
		ifTrue: [self addStyleClass: #progressBarFull]
		ifFalse: [self removeStyleClass: #progressBarFull].
	
	self changed