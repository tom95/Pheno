initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #tag;
		addFallbackStyles: ((BTStyle for: #tag) spacing: 5);
		add: ((BTIconButton name: #iconRemove)
			addStyleClass: #noPadding;
			when: #clicked send: #triggerDeleted to: self;
			yourself)