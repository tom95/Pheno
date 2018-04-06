as yet unclassified
initialize

	super initialize.
	
	self
		vertical: true;
		add: (BTAlert text: 'Danger! D:' type: #danger);
		add: (BTAlert text: 'Info! :|' type: #info);
		add: (BTAlert text: 'Warning! :o' type: #warning);
		add: (BTAlert text: 'Success! \o/' type: #success)