initialize-release
initialize
	super initialize.
	
	minSize := 0 @ 0.
	maxSize := -1 @ -1.
	vertical := false.
	spacing := 0.
	expand := false.
	ignoreLayout := false.
	disabled := false.
	align := #(fill fill).
	requestCache := BTSizeRequestCache new.
	
	self styleContext: BTStyleContext new