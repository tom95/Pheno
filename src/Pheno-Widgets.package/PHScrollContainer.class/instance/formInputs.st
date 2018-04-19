accessing
formInputs
	
	^ self hasSubmorphs
		ifTrue: [self firstSubmorph formInputs]
		ifFalse: [#()]
