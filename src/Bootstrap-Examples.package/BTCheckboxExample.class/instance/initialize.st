as yet unclassified
initialize

	super initialize.
	
	self
		add: BTCheckbox new;
		add: (BTCheckbox new addStyleClass: #danger);
		add: (BTCheckbox new addStyleClass: #primary);
		add: (BTCheckbox new addStyleClass: #success);
		add: (BTCheckbox new addStyleClass: #info);
		add: (BTCheckbox new addStyleClass: #warning);
		add: (BTCheckboxWithLabel label: 'Click the label to change the box!')