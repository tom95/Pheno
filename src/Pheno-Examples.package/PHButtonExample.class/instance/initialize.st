initialize-release
initialize

	super initialize.
	
	self
		addStyleClass: #withPadding;
		
		add: (PHButtonGroup new
			add: (PHButton icon: #iconAlign_left);
			add: (PHButton icon: #iconAlign_center);
			add: (PHButton icon: #iconAlign_right);
			add: (PHButton icon: #iconAlign_justify));
		
		add: ((PHButton label: 'Danger' icon: #iconBell)
			"see PHTheme>>themeColorTypes for a full list of styles"
			addStyleClass: #danger;
			when: #clicked send: #showNotification:type: to: self withArguments: #('Danger!' #danger));
		
		add: ((PHIconButton name: #iconBalance_scale)
			when: #clickedWithEvent send: #showNotification:type: to: self withArguments: #(nil #info))