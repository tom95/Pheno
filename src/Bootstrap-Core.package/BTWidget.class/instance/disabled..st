accessing
disabled: aBoolean

	disabled := aBoolean.
	self styleContext stateDisabled: aBoolean.
	self changed