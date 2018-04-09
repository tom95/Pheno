ui-matching
findSubmorph: aParentMorph ofKind: aClass

	aParentMorph allMorphsDo: [:morph |
		(morph isKindOf: aClass) ifTrue: [^ morph]].
	
	^ nil