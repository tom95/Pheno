as yet unclassified
initialize

	super initialize.
	
	self
		addStyleClass: #withPadding;
		add: PHIcon iconEdit;
		add: PHIcon iconLinux;
		add: PHIcon iconAlign_center;
		add: (PHIconButton name: #iconEdit);
		add: (PHIconButton name: #iconFont);
		add: (PHLabel text: 'Check out https://fontawesome.com/icons for a full list of icon names. The names are changed when imported to the image, e.g. instead of the icon ''align-center'' write ''iconAlign_center''')