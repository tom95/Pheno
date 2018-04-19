as yet unclassified
initialize

	super initialize.
	
	self
		vertical: true;
		add: (PHAlert text: 'Danger! D:' type: #danger);
		add: (PHAlert text: 'Info! :|' type: #info);
		add: (PHAlert text: 'Warning! :o' type: #warning);
		add: (PHAlert text: 'Success! \o/' type: #success)