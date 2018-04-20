layout
align: aCollection
	" e.g. `self align: #(center start)`, each one of #start, #center, #end, #fill "
	
	(aCollection isCollection and: [aCollection size = 2]) ifFalse: [self error: 'incorrect value passed to align:'].
	
	align := aCollection.
	self layoutChanged