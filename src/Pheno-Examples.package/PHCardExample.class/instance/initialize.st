as yet unclassified
initialize

	super initialize.
	
	3 timesRepeat: [ | body content header |
		content := (PHLabel text: self sampleText).
		body := PHCollapsible new add: content.
		header := PHCardHeader new
			add: (PHLabel text: 'This is a cat');
			when: #clicked send: #toggleCollapsed to: body;
			yourself.
		
		self add: (PHCard new
			add: header;
			add: body;
			yourself) ].