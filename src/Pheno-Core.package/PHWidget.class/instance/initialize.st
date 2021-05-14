initialize-release
initialize

	styleContext := PHStyleContext new.
	styleContext addDependent: self.
	requestCache := PHSizeRequestCache new.
	
	super initialize.
	
	minSize := 0 @ 0.
	maxSize := -1 @ -1.
	vertical := false.
	spacing := 0.
	expand := false.
	ignoreLayout := false.
	disabled := false.
	align := #(#fill #fill).
	
	self changed