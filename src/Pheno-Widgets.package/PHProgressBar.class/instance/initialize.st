as yet unclassified
initialize

	super initialize.
	
	percentage := 0.
	fillStyleContext := PHStyleContext new
		parent: self styleContext;
		addClass: #progressBarFill.
	
	self
		minSize: 0 @ 16;
		addStyleClass: #progressBar;
		addFallbackStyles: (PHStyleProvider new
			add: ((PHStyle for: #progressBar)
				backgroundColor: #ccc;
				border: 1 color: #'000');
			add: ((PHStyle for: #progressBar asStyle > #progressBarFill) backgroundColor: #'333'))