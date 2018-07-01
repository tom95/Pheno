as yet unclassified
initialize

	super initialize.
	
	self
		addStyleClass: #withPadding;
		add: ((regex := PHTextArea placeholder: 'Enter regex here ...')
			when: #changed send: #matchRegex to: self);
		add: PHDivider new