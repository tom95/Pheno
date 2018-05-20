as yet unclassified
initialize

	super initialize.
	
	self
		addStyleClass: #withPadding;
		
		add: (PHLabel pageHeader: 'Page Header!');
		add: (PHLabel heading: 'Heading!');
		add: (PHLabel subHeading: 'Sub Heading');
		
		add: (PHLabel categoryHeader: 'Category Header!');
		add: (PHLabel subcategoryHeader: 'Subcategory Header!');
		add: (PHLabel secondarySubHeading: 'Secondary Subcategory Heading!');
		
		add: (PHLabel bold: 'Bold!');
		add: (PHLabel italic: 'Italic');
		add: (PHLabel text: 'Just text');
		add: (PHLabel small: 'Small...');
		add: (PHLabel secondary: 'Secondary');
		
		add: ((PHLabel text: 'text size 33') pointSize: 33);
		add: ((PHLabel text: 'text size 5') pointSize: 5);
		
		add: ((PHLink text: 'Click me pls')
			when: #clicked
			evaluate: [self topLevel displayNotification: 'hi' type: #success]);
		
		add: (PHLabel text: self sampleText);
		
		"see PHMarkupParser>>attitributeFor:value: for a list of supported <span> attributes or parseTagAttributesFrom: for supported tags"
		add: (PHLabel markup: '<b>Bold text</b> followed by <span color="#f00">red text</span>', String cr, 'and then <i>some italics on the next line!</i>.')