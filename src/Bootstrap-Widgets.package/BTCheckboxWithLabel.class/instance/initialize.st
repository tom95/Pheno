initialize-release
initialize

	super initialize.
	
	checkbox := BTCheckbox new.
	label := BTLabel new.
	
	self
		addStyleClass: #checkboxWithLabel;
		when: #clicked send: #toggleChecked to: self;
		add: checkbox;
		add: label