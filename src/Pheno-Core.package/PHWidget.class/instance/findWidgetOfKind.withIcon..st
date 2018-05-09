test-helper
findWidgetOfKind: aClass withIcon: anIconLabelSymbol
	" returns the first child (non-direct children included) that is of aClass and has a child PHButton with an icon of anIconLabel "
	
	self allMorphsDo: [:morph |
		((morph isKindOf: aClass) and: [(morph firstSubmorph isKindOf: PHIcon) and: [morph firstSubmorph iconName = anIconLabelSymbol]])
					ifTrue: [^ morph]].
				
	(NotFound object: aClass) signal