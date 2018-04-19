as yet unclassified
isSelected: aBoolean

	isSelected := aBoolean.
	self styleContext stateActive: aBoolean.
	self color: self styleContext color.
	self changed.