initialize-release
initialize

	super initialize.
	
	slides := PHStackedContainer new.
	
	self
		addStyleClass: #presentation;
		withLayout;
		vertical: true;
		addUserStyles: (presentationStyles := PHStyleProvider new
				add: ((PHStyle for: #presentation) backgroundColor: Color white));
		add: (toolbar := self createToolbar);
		add: (slides
			expand: true);
		
		addSlide