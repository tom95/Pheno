helper
for: aClassSymbolOrCollectionOrSelector

	| style |
	style := PHStyle for: aClassSymbolOrCollectionOrSelector.
	self add: style.
	^ style