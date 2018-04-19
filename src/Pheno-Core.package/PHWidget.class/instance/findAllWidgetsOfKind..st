test-helper
findAllWidgetsOfKind: aClass
	" returns the first child (non-direct children included) that is of aClass or errors "
	
	| morphs |
	(morphs := self allMorphs select: [:morph | morph isKindOf: aClass]) ifNotEmpty: [^ morphs].
	
	(NotFound object: aClass) signal