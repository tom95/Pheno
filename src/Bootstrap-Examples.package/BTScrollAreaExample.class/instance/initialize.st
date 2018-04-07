as yet unclassified
initialize

	super initialize.
	
	self add: (BTScrollArea new
		policy: #(show scroll);
		content: (BTWidget newWithVerticalLayout
			addStyleClass: #withPadding;
			add: (BTLabel text: self sampleText);
			add: (BTImage form: self sampleImage)))