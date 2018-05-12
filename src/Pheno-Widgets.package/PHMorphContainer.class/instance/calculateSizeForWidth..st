layout
calculateSizeForWidth: aNumber

	self hasSubmorphs
		ifTrue: [^ PHSizeRequest fixed: self firstSubmorph extent]
		ifFalse: [^ PHSizeRequest fixed: 0 @ 0]