hierarchy
addTab: aTitle content: aWidget

	self navigationBar addTab: aTitle.
	self stackedContainer add: aWidget.
	
	" open the first added tab "
	self navigationBar submorphCount = 1 ifTrue: [self showPage: 1]