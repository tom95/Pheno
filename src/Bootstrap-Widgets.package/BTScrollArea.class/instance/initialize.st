initialize-release
initialize

	super initialize.
	
	policy := #(show scroll).
	
	container := BTScrollContainer new
		color: Color transparent;
		yourself.
	
	scrollBars := {BTScrollBar scrollArea: self. BTScrollBar scrollArea: self}.
	
	self
		addStyleClass: #scrollArea;
		inStickyMode: true;
		addMorph: container;
		addMorph: scrollBars first;
		addMorph: scrollBars second