as yet unclassified
concreteTextLayoutClass

	^ (Smalltalk
		at: #BTPangoTextLayout
		ifPresent: [:pangoClass |
			pangoClass available ifTrue: [pangoClass] ifFalse: [BTMorphicTextLayout]])
		ifNil: [BTMorphicTextLayout]