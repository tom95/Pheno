layout
contentExtent

	^ container hasSubmorphs
		ifTrue: [container firstSubmorph extent]
		ifFalse: [0]