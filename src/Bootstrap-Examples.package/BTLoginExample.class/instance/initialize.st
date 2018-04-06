as yet unclassified
initialize

	| loginButton loader loginBox |
	super initialize.
	
	loginButton := (BTButton label: 'Login') addStyleClass: #primary.
	loginBox := (BTPage column expand: true; align: #(center center))
		add: (BTLabel heading: 'Login to the FONT_WIKI');
		add: (BTTextArea placeholder: 'Username');
		add: (BTPasswordArea placeholder: 'Password');
		add: loginButton;
		primaryFormClickable: loginButton.
	
	loader := BTLoader new align: #(center center); expand: true.
	
	loginButton when: #clicked evaluate: [
		self remove: loginBox; add: loader.
		[	(Delay forSeconds: 1) wait.
			loginBox add: (BTAlert icon: #iconExclamation_triangle text: 'Invalid login provided.' type: #danger) at: 2.
			self remove: loader; add: loginBox] fork].
	
	self add: loginBox