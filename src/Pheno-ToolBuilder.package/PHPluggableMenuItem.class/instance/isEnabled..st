as yet unclassified
isEnabled: aBoolean

	isEnabled = aBoolean ifTrue: [^ self].
	isEnabled := aBoolean.
	
	self styleContext stateDisabled: aBoolean not.
	self color: self styleContext color