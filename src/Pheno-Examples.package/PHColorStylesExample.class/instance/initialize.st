as yet unclassified
initialize

	super initialize.
	
	self addStyleClass: #withPadding.
	
	self add: (PHPage row addAll: (PHTheme themeColorTypes collect: [:style |
		(PHButton label: style asString icon: #iconEyedropper) addStyleClass: style])).
	
	self add: (PHPage row addAll: (PHTheme themeColorTypes collect: [:style |
		PHCheckbox new addStyleClass: style])).
	
	self add: (PHPage row addAll: (PHTheme themeColorTypes collect: [:style |
		(PHBadge text: style asString) addStyleClass: style])).
	
	self addAll: (PHTheme themeColorTypes collect: [:style |
		PHAlert icon: #iconEyedropper text: style asString type: style])