as yet unclassified
initialize

	super initialize.
	
	self
		addStyleClass: #withPadding;
		
		add: (BTLabel pageHeader: 'Page Header!');
		add: (BTLabel heading: 'Heading!');
		add: (BTLabel subHeading: 'Sub Heading');
		
		add: (BTLabel categoryHeader: 'Category Header!');
		add: (BTLabel subcategoryHeader: 'Subcategory Header!');
		add: (BTLabel secondarySubHeading: 'Secondary Subcategory Heading!');
		
		add: (BTLabel bold: 'Bold!');
		add: (BTLabel italic: 'Italic');
		add: (BTLabel text: 'Just text');
		add: (BTLabel small: 'Small...');
		add: (BTLabel secondary: 'Secondary');
		
		add: ((BTLabel text: 'text size 33') pointSize: 33);
		add: ((BTLabel text: 'text size 5') pointSize: 5);
		
		" note: only supported with the pango backend "
		add: ((BTLabel text: 'raleway')
			font: 'raleway';
			pointSize: 20);
		
		add: ((BTLink text: 'Click me pls')
			when: #clicked
			evaluate: [self topLevel displayNotification: 'hi' type: #success]);
		
		add: (BTLabel text: self sampleText)