accessing
state: aCollectionOfSymbols

	self flag: #performace. "doing the translation to the bit indices here would mean we only do it once at the cost of being able to easily inspect it. Suggestion: do the translation here and have the explorerString translate back again"
	
	state := aCollectionOfSymbols isSymbol
		ifTrue: [{aCollectionOfSymbols}]
		ifFalse: [aCollectionOfSymbols]