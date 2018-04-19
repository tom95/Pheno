initialize-release
initialize

	super initialize.

	self
		addStyleClass: #buttonGroup;
		addFallbackStyles: (PHStyleProvider new
			add: ((PHStyle for: #buttonGroup) spacing: 0);
			add: ((PHStyle for: #buttonGroup asStyle > #button) borderRadius: 0));
		vertical: false;
		withLayout