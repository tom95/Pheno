initialize-release
initialize

	| tabs buttons |
	super initialize.
	
	self
		vertical: false;
		withLayout;
		add: (buttons := PHListGroup new);
		add: (tabs := PHStackedContainer new expand: true).
	
	PHExample subclasses doWithIndex: [:exampleClass :index |
		buttons add: ((PHListGroupItem label: exampleClass name)
			addStyleClass: #clickable;
			when: #clicked send: #selectWidgetAt: to: tabs with: index).
		tabs add: (exampleClass new expand: true)]