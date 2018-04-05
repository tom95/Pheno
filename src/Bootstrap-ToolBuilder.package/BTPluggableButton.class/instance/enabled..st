as yet unclassified
enabled: aBool
	enabled := aBool.
	self styleContext stateDisabled: enabled not.
	self updateFillStyle.