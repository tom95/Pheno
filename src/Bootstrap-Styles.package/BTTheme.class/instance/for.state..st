helper
for: aClassSymbolOrCollection state: aStateSymbolOrCollection

	| style |
	style := BTStyle for: aClassSymbolOrCollection state: aStateSymbolOrCollection.
	self add: style.
	^ style