as yet unclassified
initialize

	| button |
	super initialize.
	
	self add: (button := (PHButton label: 'Your Name' iconSuffix: #iconCaret_down)).
	
	PHDropdown new
		add: ((PHDropdownItem label: 'Settings')
			when: #clicked send: #displayNotification:type: to: self withArguments: {'Settings'. #info});
		add: ((PHDropdownItem label: 'Profile')
			when: #clicked send: #displayNotification:type: to: self withArguments: {'Profile'. #info});
		add: ((PHDropdownItem label: 'Logout')
			when: #clicked send: #displayNotification:type: to: self withArguments: {'Settings'. #info});
		attachTo: button