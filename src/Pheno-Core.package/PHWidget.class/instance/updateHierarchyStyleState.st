styles
updateHierarchyStyleState

	| even |
	self styleContext invalidateCache.
	self hasSubmorphs ifFalse: [^ self].
	
	even := false.
	self childWidgetsDo: [:child |
		child styleContext
			stateFirstChild: false;
			stateLastChild: false;
			stateEvenChild: even;
			stateOddChild: even not.
		even := even not].
	
	self firstSubmorph isWidget ifTrue: [self firstSubmorph styleContext stateFirstChild: true].
	self lastSubmorph isWidget ifTrue: [self lastSubmorph styleContext stateLastChild: true].
	self updateStyleProperties