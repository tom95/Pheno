initialize-release
initializeWithLayoutClass: aClass

	layout := aClass new
		font: aClass defaultFont;
		lineSpacing: 4;
		yourself.
	text := ''.
	angle := 0.
	styleAttributes := Dictionary new.
	layoutWidth := -1.
	wrap := true.
	
	super initialize.
	
	self
		addStyleClass: #label;
		addFallbackStyles: ((BTStyle for: #label) color: #inherit)