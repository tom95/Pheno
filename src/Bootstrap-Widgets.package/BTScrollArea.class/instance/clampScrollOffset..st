layout
clampScrollOffset: aPoint

	^ container hasSubmorphs
		ifFalse: [0 asPoint]
		ifTrue: [aPoint min: (container firstSubmorph extent - self extent) max: 0 asPoint]