initialization
setDefaultParameters

	super setDefaultParameters.
	
	" overwrite what was set above "
	self
		font: (self userInterfaceTheme font ifNil: [TextStyle defaultFont]);
		setTextColor: self styleContext color.
	
	textMorph
		caretColor: (self styleContext withClass: #caret do: #color);
		selectionColor: (self styleContext withClass: #selection do: #backgroundColor);
		unfocusedSelectionColor: (self styleContext withState: #backdrop andClass: #selection do: #backgroundColor)