accessing
textLayoutClass

	^ (Smalltalk
		at: #BTPangoTextLayout
		ifPresent: [:pangoClass |
			pangoClass available ifTrue: [pangoClass] ifFalse: [BTMorphicTextLayout]])
		ifNil: [BTMorphicTextLayout]