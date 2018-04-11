as yet unclassified
initialize

	super initialize.
	
	self addStyleClass: #withPadding.
	
	self add: (BTPage row addAll: (BTTheme themeColorTypes collect: [:style |
		(BTButton label: style asString icon: #iconEyedropper) addStyleClass: style])).
	
	self add: (BTPage row addAll: (BTTheme themeColorTypes collect: [:style |
		BTCheckbox new addStyleClass: style])).
	
	self add: (BTPage row addAll: (BTTheme themeColorTypes collect: [:style |
		(BTBadge text: style asString) addStyleClass: style])).
	
	self addAll: (BTTheme themeColorTypes collect: [:style |
		BTAlert icon: #iconEyedropper text: style asString type: style])