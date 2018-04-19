initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #checkbox;
		addFallbackStyles: (PHStyleProvider new
			add: ((PHStyle for: #checkbox)
				border: 1 color: #'999');
			add: ((PHStyle for: #checkbox state: #selected)
				icon: #iconCheck));
		checked: false;
		align: #(start start);
		when: #clicked send: #toggleChecked to: self;
		minSize: 22 asPoint