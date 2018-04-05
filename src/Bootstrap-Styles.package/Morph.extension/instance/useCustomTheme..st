*Bootstrap-Styles
useCustomTheme: aStyleProvider

	self valueOfProperty: #customTheme ifPresentDo: [:provider |
		self styleContext removeStyleProvider: provider].
	
	self styleContext parent: nil.
	self styleContext addProvider: aStyleProvider priority: BTStyleContext priorityTheme.
	
	self setProperty: #customTheme toValue: aStyleProvider.
	
	self allMorphsDo: #applyUserInterfaceTheme