helper
for: aClassSymbolOrCollectionOrSelector

	| style |
	style := BTStyle for: aClassSymbolOrCollectionOrSelector.
	self add: style.
	^ style