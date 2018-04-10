as yet unclassified
initialize

	| app page1 page2 page3 |
	super initialize.
	
	page1 := BTApplicationPage new.
	app := BTPageNavigationContainer firstPage: page1.
	
	page3 := BTApplicationPage new add: (BTLabel heading: 'Page 3!').
	page2 := BTApplicationPage new
		add: (BTLabel heading: 'Page 2!');
		add: ((BTButton label: 'To Page 3') when: #clicked send: #openPage:with: to: app withArguments: {page3. nil}).
	page1
		add: (BTLabel heading: 'Page 1!');
		add: ((BTButton label: 'To Page 2') when: #clicked send: #openPage:with: to: app withArguments: {page2. nil}).
	
	" event bindings are a weak reference, so we store our pages on our app for this example "
	app setProperty: #pages toValue: {page1. page2. page3}.
	
	self add: app