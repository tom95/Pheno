as yet unclassified
initialize

	super initialize.
	
	self
		add: (((PHButton label: 'Show notification' icon: #iconFlag)
			when: #clicked evaluate: [self topLevel displayNotification: 'Critical Failure' type: #danger ])).
	
	[(Delay forSeconds: 1) wait. self topLevel displayNotification: 'I''m staying.' type: #success] fork.
	[(Delay forSeconds: 2) wait. self topLevel displayNotification: 'Hi' type: #warning] fork