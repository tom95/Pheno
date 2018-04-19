initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #tag;
		addFallbackStyles: ((PHStyle for: #tag) spacing: 5);
		add: ((PHIconButton name: #iconRemove)
			addStyleClass: #noPadding;
			when: #clicked send: #triggerDeleted to: self;
			yourself)