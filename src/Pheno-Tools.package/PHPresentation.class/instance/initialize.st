as yet unclassified
initialize

	super initialize.
	
	self
		withLayout;
		vertical: true;
		add: (toolbar := self createToolbar);
			
			add: (slides := PHStackedContainer new
				addUserStyles: (presentationStyles := PHStyleProvider new);
				expand: true);
			
			addSlide