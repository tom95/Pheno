as yet unclassified
initialize

	| loginButton loader loginBox |
	super initialize.
	
	loginButton := (PHButton label: 'Login') addStyleClass: #primary.
	loginBox := (PHPage column expand: true; align: #(center center))
		add: (PHLabel heading: 'Login to the FONT_WIKI');
		add: (PHTextArea placeholder: 'Username');
		add: (PHPasswordArea placeholder: 'Password');
		add: loginButton;
		primaryFormClickable: loginButton.
	
	loader := PHLoader new align: #(center center); expand: true.
	
	loginButton when: #clicked evaluate: [
		self remove: loginBox; add: loader.
		[	(Delay forSeconds: 1) wait.
			loginBox add: (PHAlert icon: #iconExclamation_triangle text: 'Invalid login provided.' type: #danger) at: 2.
			self remove: loader; add: loginBox] fork].
	
	self add: loginBox