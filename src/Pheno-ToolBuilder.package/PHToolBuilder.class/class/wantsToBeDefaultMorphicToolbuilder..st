preferences
wantsToBeDefaultMorphicToolbuilder: aBoolean

	WantsToBeDefaultMorphicToolbuilder := aBoolean.
	aBoolean 
		ifTrue: [UIManager default builderClass: self]
		ifFalse: [UIManager default builderClass: nil ]