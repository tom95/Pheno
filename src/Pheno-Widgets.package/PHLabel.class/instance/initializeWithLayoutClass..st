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
	
	self initialize.
	
	self
		addStyleClass: #label;
		addFallbackStyles: ((PHStyle for: #label)
			color: #inherit;
			fontWeight: #inherit;
			fontSize: #inherit;
			fontStyle: #inherit)