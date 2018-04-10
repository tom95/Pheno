initialize-release
initialize

	super initialize.
	
	self
		stackedContainer: BTStackedContainer new;
		navigationBar: BTTabStrip new.
	
	self navigationBar when: #tabSwitched send: #selectTab: to: self.
	
	self
		addStyleClass: #pageNavigation;
		withLayout;
		vertical: true;
		add: self navigationBar;
		add: self stackedContainer