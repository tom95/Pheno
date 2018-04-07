as yet unclassified
initialize

	| button |
	super initialize.
	
	self add: (button := (BTButton label: 'Your Name' iconSuffix: #iconCaret_down)).
	
	BTDropdown new
		add: ((BTDropdownItem label: 'Settings')
			when: #clicked send: #displayNotification:type: to: self withArguments: {'Settings'. #info});
		add: ((BTDropdownItem label: 'Profile')
			when: #clicked send: #displayNotification:type: to: self withArguments: {'Profile'. #info});
		add: ((BTDropdownItem label: 'Logout')
			when: #clicked send: #displayNotification:type: to: self withArguments: {'Settings'. #info});
		attachTo: button