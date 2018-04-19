initialize-release
initialize

	super initialize.
	
	titleLabel := (PHLabel text: 'Dialog')
		expand: true;
		subHeading.
	
	self
		size: 300 @ 200;
		addStyleClass: #dialog;
		add: (PHCardHeader new
			add: ((PHIconButton name: #iconRemove) when: #clicked send: #cancel: to: self with: nil);
			add: titleLabel;
			initiateDragOf: self)