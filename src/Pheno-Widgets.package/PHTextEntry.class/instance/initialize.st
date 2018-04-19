initialize-release
initialize

	focused := false.
	placeholder := ''.
	drawCursor := true.
	multiLine := false.
	self editable: true.
	
	super initialize.
	
	self addStyleClass: #textEntry