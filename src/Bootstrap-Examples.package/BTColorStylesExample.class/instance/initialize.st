as yet unclassified
initialize

	super initialize.
	
	self add: (BTPage row addAll: (BTTheme themeColorTypes collect: [:style |
		(BTButton label: style asString icon: #iconEyedropper) addStyleClass: style]))