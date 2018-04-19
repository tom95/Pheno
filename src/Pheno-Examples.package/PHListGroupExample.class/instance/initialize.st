as yet unclassified
initialize

	super initialize.
	
	self add: (PHListGroup new addAll: (#('First' 'Second' 'None') collect: [ :text |
		PHListGroupItem new
			addStyleClass: #clickable;
			add: (PHLabel text: text)
			oppositeTo: (PHBadge text: '42')]))