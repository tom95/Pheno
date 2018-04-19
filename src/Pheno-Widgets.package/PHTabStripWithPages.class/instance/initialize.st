initialize-release
initialize

	super initialize.
	
	self
		stackedContainer: PHStackedContainer new;
		navigationBar: PHTabStrip new.
	
	self navigationBar when: #tabSwitched send: #selectTab: to: self.
	
	self
		addStyleClass: #pageNavigation;
		withLayout;
		vertical: true;
		add: self navigationBar;
		add: self stackedContainer