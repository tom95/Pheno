helper
for: aClassSymbolOrCollection state: aStateSymbolOrCollection

	| style |
	style := PHStyle for: aClassSymbolOrCollection state: aStateSymbolOrCollection.
	self add: style.
	^ style