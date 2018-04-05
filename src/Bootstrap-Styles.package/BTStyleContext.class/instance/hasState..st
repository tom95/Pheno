states
hasState: aStateSymbol

	^ self getState: (self class stateSymbolToIndex: aStateSymbol)