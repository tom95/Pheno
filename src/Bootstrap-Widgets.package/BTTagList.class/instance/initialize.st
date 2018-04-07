initialize-release
initialize

	super initialize.
	
	tags := OrderedCollection new.
	
	self
		addStyleClass: #tagList;
		withLayout