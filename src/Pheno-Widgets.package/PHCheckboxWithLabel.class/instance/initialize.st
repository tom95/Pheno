initialize-release
initialize

	super initialize.
	
	checkbox := PHCheckbox new.
	label := PHLabel new.
	
	self
		addStyleClass: #checkboxWithLabel;
		when: #clicked send: #toggleChecked to: self;
		add: checkbox;
		add: label