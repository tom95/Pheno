initialize-release
initialize

	| layoutClass |
	layoutClass := BTTextLayout concreteTextLayoutClass.
	
	layout := layoutClass new font: layoutClass defaultFont; yourself.
	text := ''.
	angle := 0.
	styleAttributes := Dictionary new.
	layoutWidth := -1.
	wrap := true.
	
	super initialize.
	
	self
		addStyleClass: #label;
		addFallbackStyles: ((BTStyle for: #label) color: #inherit)