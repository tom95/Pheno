classes
addProvider: aStyleProviderOrStyle priority: aNumber

	| provider |
	provider := aStyleProviderOrStyle asProvider.
	providers add: {provider. aNumber}.
	
	provider addDependent: self.
	self changed