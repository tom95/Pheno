*Pheno-Styles
updateHierarchyStyleState

	| even |
	self hasSubmorphs ifFalse: [^ self].
	
	even := false.
	self submorphsDo: [:child |
		child styleContext
			stateFirstChild: false;
			stateLastChild: false;
			stateEvenChild: even;
			stateOddChild: even not.
		even := even not].
	
	self firstSubmorph styleContext stateFirstChild: true.
	self lastSubmorph styleContext stateLastChild: true.
	self updateStyleProperties