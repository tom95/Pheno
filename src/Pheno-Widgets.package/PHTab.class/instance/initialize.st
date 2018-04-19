initialize-release
initialize
	super initialize.
	
	self
		addStyleClass: #tab;
		addFallbackStyles: (PHStyleProvider new
			add: ((PHStyle for: #tab)
				borderColor: #ccc;
				borderWidth: (Rectangle left: 0 right: 0 top: 0 bottom: 1);
				padding: 20 @ 12);
			add: ((PHStyle for: #tab state: #selected)
				borderWidth: (Rectangle left: 1 right: 1 top: 1 bottom: 0);
				borderRadius: (Rectangle left: 0 right: 0.25rem top: 0.25rem bottom: 0));
			add: ((PHStyle for: #tab state: #hover)
				borderWidth: (Rectangle left: 1 right: 1 top: 1 bottom: 1);
				borderRadius: (Rectangle left: 0 right: 0.25rem top: 0.25rem bottom: 0)));
		align: #(start fill);
		when: #clickedWithEvent send: #makeActive: to: self