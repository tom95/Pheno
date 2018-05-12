as yet unclassified
addTestLine

	self add: (PHPage row
		add: ((PHTextArea placeholder: 'Enter test here ... (press return to add more)')
			when: #confirmed send: #addTestLine to: self;
			when: #changed send: #matchRegex to:  self;
			expand: true);
		add: (PHBadge new visible: false))