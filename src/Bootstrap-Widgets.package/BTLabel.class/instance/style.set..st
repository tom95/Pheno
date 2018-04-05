styling
style: aStyleString set: aValue

	self styleAttributes at: aStyleString put: (aValue asString).
	self updateText