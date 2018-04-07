as yet unclassified
initialize

	super initialize.
	
	self
		add: (label := BTLabel new);
		add: ((BTButton label: 'Open Dialog')
			when: #clicked send: #openDialog to: self)