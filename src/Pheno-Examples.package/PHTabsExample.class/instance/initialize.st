as yet unclassified
initialize

	super initialize.
	
	self
		add: (PHTabStripWithPages new
			addTab: 'Tab 1' content: (PHLabel text: 'Content 1');
			addTab: 'Tab 2' content: (PHLabel text: 'Content 2');
			addTab: 'Tab 3' content: (PHLabel text: 'Content 3');
			showPage: 2)