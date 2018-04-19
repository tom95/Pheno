initialize-release
initialize

	super initialize.
	
	policy := #(show scroll).
	
	container := PHScrollContainer new
		color: Color transparent;
		yourself.
	
	scrollBars := {PHScrollBar scrollArea: self. PHScrollBar scrollArea: self}.
	
	self
		addStyleClass: #scrollArea;
		inStickyMode: true;
		addMorph: container;
		addMorph: scrollBars first;
		addMorph: scrollBars second