initialize-release
initialize

	super initialize.

	self
		addStyleClass: #buttonGroup;
		addFallbackStyles: (BTStyleProvider new
			add: ((BTStyle for: #buttonGroup) spacing: 0);
			add: ((BTStyle for: #buttonGroup asStyle > #button) borderRadius: 0));
		vertical: false;
		withLayout