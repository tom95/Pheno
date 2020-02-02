initialize-release
initialize

	super initialize.
	
	self
		add: PHCheckbox new;
		add: (PHCheckbox new addStyleClass: #danger);
		add: (PHCheckbox new addStyleClass: #primary);
		add: (PHCheckbox new addStyleClass: #success);
		add: (PHCheckbox new addStyleClass: #info);
		add: (PHCheckbox new addStyleClass: #warning);
		add: (PHCheckboxWithLabel label: 'Click the label to change the box!')