as yet unclassified
initialize

	super initialize.
	
	self add: (BTListGroup new addAll: (#('First' 'Second' 'None') collect: [ :text |
		BTListGroupItem new
			addStyleClass: #clickable;
			add: (BTLabel text: text)
			oppositeTo: (BTBadge text: '42')]))