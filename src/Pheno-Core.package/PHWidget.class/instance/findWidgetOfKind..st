test-helper
findWidgetOfKind: aClass
	" returns the first child (non-direct children included) that is of aClass or errors "
	
	self allMorphsDo: [:morph | (morph isKindOf: aClass) ifTrue: [^ morph]].
	
	(NotFound object: aClass) signal