as yet unclassified
initialize

	super initialize.
	
	self
		add: (BTTabStripWithPages new
			addTab: 'Tab 1' content: (BTLabel text: 'Content 1');
			addTab: 'Tab 2' content: (BTLabel text: 'Content 2');
			addTab: 'Tab 3' content: (BTLabel text: 'Content 3');
			showPage: 2)