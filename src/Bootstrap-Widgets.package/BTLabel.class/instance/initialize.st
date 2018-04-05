initialize-release
initialize

	layout := self class textLayoutClass new font: self class textLayoutClass defaultFont; yourself.
	text := ''.
	angle := 0.
	styleAttributes := Dictionary new.
	layoutWidth := -1.
	wrap := true.
	
	super initialize.
	
	self
		addStyleClass: #label;
		addFallbackStyles: ((BTStyle for: #label) color: #inherit)