*Bootstrap-Styles
useGlobalTheme

	self valueOfProperty: #customTheme ifPresentDo: [:provider |
		self removeStyleProvider: provider].
	
	self styleContext parent: BTStyleContext global