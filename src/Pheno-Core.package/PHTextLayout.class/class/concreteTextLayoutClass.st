as yet unclassified
concreteTextLayoutClass

	^ (Smalltalk
		at: #PHPangoTextLayout
		ifPresent: [:pangoClass |
			pangoClass available ifTrue: [pangoClass] ifFalse: [PHMorphicTextLayout]])
		ifNil: [PHMorphicTextLayout]