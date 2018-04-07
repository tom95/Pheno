initialize-release
initialize

	super initialize.
	
	titleLabel := (BTLabel text: 'Dialog')
		expand: true;
		subHeading.
	
	self
		size: 300 @ 200;
		addStyleClass: #dialog;
		add: (BTCardHeader new
			add: ((BTIconButton name: #iconRemove) when: #clicked send: #cancel: to: self with: nil);
			add: titleLabel;
			initiateDragOf: self)