classes
removeProvider: aStyleProvider

	providers removeAllSuchThat: [:providerAndPriority | providerAndPriority first == aStyleProvider].
	
	aStyleProvider removeDependent: self.
	self changed