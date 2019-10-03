initialize-release
initializeWithPage: aPage with: anObject

	loadingOperationCounter := 0.
	openPage := aPage.
	navigationStack := PHNavigationStack new
		application: self;
		yourself.
	breadcrumbs := PHButtonGroup new.
	
	" widget that blocks clicks while loading and displays a loading spinner "
	loadingWidget := PHClickable new
		withLayout;
		addStyleClass: #pageNavigationContainerLoadingModal;
		add: (PHLoader new
			align: #(center center);
			expand: true);
		ignoreLayout: true.
	
	header := PHPage row
		addStyleClass: #withPadding;
		expand: true;
		add: ((PHIconButton name: #iconArrow_left) when: #clicked send: #goBack to: self);
		add: ((PHIconButton name: #iconArrow_right) when: #clicked send: #goForward to: self);
		add: breadcrumbs";
		add: BTWidget spacer;
		add: ((BTTextArea placeholder: 'Search ...') minSize: self searchbarWidth @ 0)".
	
	contentContainer := PHPage row
		expand: true;
		add: aPage.
	
	self initialize.
	
	self
		withLayout;
		vertical: true;
		addStyleClass: #noSpacing;
		updateBreadcrumbs;
		add: header;
		add: PHDivider new;
		add: contentContainer.
	
	navigationStack
		open: aPage with: anObject;
		when: #opened send: #privateOpenPage: to: self;
		yourself