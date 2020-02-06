scaling
configureForScalingFactor: aNumber fontNamed: aSymbol

	| style defaultFont |
	self scalingFactor: aNumber.
	style := (TextStyle named: aSymbol) copy.
	
	style defaultFont isTTCFont ifFalse: [self error: 'requires a ttc font to create scaled variants'].
	
	defaultFont := style addNewFontSize: self baseFontSize withScalingFactor.
	self fontSizeStrings do: [:size | style addNewFontSize: (self parseFontSize: size) floor].
	style defaultFontIndex: (style fontArray indexOf: defaultFont).
	DefaultTextStyle := style.
	
	Preferences
		setSystemFontTo: defaultFont;
		setListFontTo: defaultFont;
		setHaloLabelFontTo: defaultFont;
		setMenuFontTo: defaultFont;
		setWindowTitleFontTo: (defaultFont emphasized: 1);
		setBalloonHelpFontTo: defaultFont;
		setCodeFontTo: defaultFont;
		setButtonFontTo: defaultFont