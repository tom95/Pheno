as yet unclassified
initialize

	super initialize.
	
	self
		addStyleClass: #withPadding;
		
		add: (BTButtonGroup new
			add: (BTButton icon: #iconAlign_left);
			add: (BTButton icon: #iconAlign_center);
			add: (BTButton icon: #iconAlign_right);
			add: (BTButton icon: #iconAlign_justify));
		
		add: ((BTButton label: 'Danger' icon: #iconBell)
			"see BTTheme>>themeColorTypes for a full list of styles"
			addStyleClass: #danger;
			when: #clicked send: #showNotification:type: to: self withArguments: #('Danger!' #danger));
		
		add: ((BTIconButton name: #iconBalance_scale)
			when: #clickedWithEvent send: #showNotification:type: to: self withArguments: #(nil #info))