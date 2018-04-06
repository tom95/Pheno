as yet unclassified
initialize

	super initialize.
	
	3 timesRepeat: [ | body content header |
		content := (BTLabel text: self sampleText).
		body := BTCollapsible new add: content.
		header := BTCardHeader new
			add: (BTLabel text: 'This is a cat');
			when: #clicked send: #toggleCollapsed to: body;
			yourself.
		
		self add: (BTCard new
			add: header;
			add: body;
			yourself) ].