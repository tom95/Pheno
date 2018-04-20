as yet unclassified
initialize

	| app page1 page2 page3 |
	super initialize.
	
	page1 := PHPage new.
	app := PHPageNavigationContainer firstPage: page1.
	
	page3 := PHPage new add: (PHLabel heading: 'Page 3!').
	page2 := PHPage new
		add: (PHLabel heading: 'Page 2!');
		add: ((PHButton label: 'To Page 3') when: #clicked send: #openPage:with: to: app withArguments: {page3. nil}).
	page1
		add: (PHLabel heading: 'Page 1!');
		add: ((PHButton label: 'To Page 2') when: #clicked send: #openPage:with: to: app withArguments: {page2. nil}).
	
	" event bindings are a weak reference, so we store our pages on our app for this example "
	app setProperty: #pages toValue: {page1. page2. page3}.
	
	self add: app