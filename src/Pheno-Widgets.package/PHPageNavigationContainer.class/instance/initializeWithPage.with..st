initialize-release
initializeWithPage: aPage with: anObject

	loadingOperationCounter := 0.
	openPage := aPage.
	navigationStack := BTNavigationStack new
		application: self;
		yourself.
	breadcrumbs := BTButtonGroup new.
	
	" widget that blocks clicks while loading and displays a loading spinner "
	loadingWidget := BTClickable new
		withLayout;
		addStyleClass: #pageNavigationContainerLoadingModal;
		add: (BTLoader new
			align: #(center center);
			expand: true);
		ignoreLayout: true.
	
	header := BTPage row
		addStyleClass: #withPadding;
		expand: true;
		add: ((BTIconButton name: #iconArrow_left) when: #clicked send: #goBack to: self);
		add: ((BTIconButton name: #iconArrow_right) when: #clicked send: #goForward to: self);
		add: breadcrumbs";
		add: BTWidget spacer;
		add: ((BTTextArea placeholder: 'Search ...') minSize: self searchbarWidth @ 0)".
	
	contentContainer := BTPage row
		expand: true;
		add: aPage.
	
	self initialize.
	
	self
		withLayout;
		vertical: true;
		addStyleClass: #noSpacing;
		updateBreadcrumbs;
		add: header;
		add: BTDivider new;
		add: contentContainer.
	
	navigationStack
		open: aPage with: anObject;
		when: #opened send: #privateOpenPage: to: self;
		yourself