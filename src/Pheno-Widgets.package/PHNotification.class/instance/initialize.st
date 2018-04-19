initialize-release
initialize
	super initialize.
	
	" inherits fallback styles from alert "
	self
		addStyleClass: #notification;
		minSize: 250 @ 0;
		ignoreLayout: true