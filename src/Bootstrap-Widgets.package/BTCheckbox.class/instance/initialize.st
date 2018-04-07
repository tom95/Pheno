initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #checkbox;
		addFallbackStyles: (BTStyleProvider new
			add: ((BTStyle for: #checkbox)
				border: 1 color: #'999');
			add: ((BTStyle for: #checkbox state: #selected)
				icon: #iconCheck));
		checked: false;
		align: #(start start);
		when: #clicked send: #toggleChecked to: self;
		minSize: 22 asPoint