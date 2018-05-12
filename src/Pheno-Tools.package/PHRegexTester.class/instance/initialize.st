as yet unclassified
initialize

	super initialize.
	
	self addStyleClass: #withPadding.
	self add: ((regex := PHTextArea placeholder: 'Enter regex here ...')
		when: #changed send: #matchRegex to: self).
	self add: PHDivider new.
	self addTestLine