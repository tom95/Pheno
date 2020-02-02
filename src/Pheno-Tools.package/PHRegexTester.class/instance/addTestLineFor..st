initialize-release
addTestLineFor: aString

	self add: (PHPage row
		add: ((PHTextArea placeholder: 'Enter test here ... (press return to add more)')
			text: aString;
			when: #confirmed send: #addTestLine to: self;
			when: #changed send: #matchRegex to:  self;
			expand: true);
		add: (PHBadge new visible: false))