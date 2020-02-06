initialize-release
initialize

	super initialize.
	
	self add: (PHScrollArea new
		policy: #(show scroll);
		content: (PHWidget newWithVerticalLayout
			addStyleClass: #withPadding;
			add: (PHLabel text: self sampleText);
			add: (PHImage form: self sampleImage)))