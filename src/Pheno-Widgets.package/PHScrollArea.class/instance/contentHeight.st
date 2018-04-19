layout
contentHeight

	^ container hasSubmorphs
		ifTrue: [container firstSubmorph height]
		ifFalse: [0]