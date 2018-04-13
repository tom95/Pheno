as yet unclassified
initialize

	super initialize.
	
	self
		addStyleClass: #withPadding;
		add: BTIcon iconEdit;
		add: BTIcon iconLinux;
		add: BTIcon iconAlign_center;
		add: (BTIconButton name: #iconEdit);
		add: (BTIconButton name: #iconFont);
		add: (BTLabel text: 'Check out https://fontawesome.com/icons for a full list of icon names. The names are changed when imported to the image, e.g. instead of the icon ''align-center'' write ''iconAlign_center''')