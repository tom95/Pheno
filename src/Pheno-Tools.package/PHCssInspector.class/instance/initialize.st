initialize-release
initialize

	super initialize.
	
	self
		withLayout;
		vertical: true;
		
		add: (PHLabel bold: 'Style Classes');
		add: (classes := PHWritableTagList new
			inputPlaceholder: 'Add class ...';
			when: #tagAdded send: #addClass: to: self;
			when: #tagRemoved send: #removeClass: to: self);
		
		add: PHDivider new;
		
		add: (PHLabel bold: 'Matching Style objects');
		add: (styleProperties := PHListGroup new)