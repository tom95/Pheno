initialize-release
initialize

	super initialize.
	
	self
		add: (label := PHLabel new);
		add: ((PHButton label: 'Open Dialog')
			when: #clicked send: #openDialog to: self)