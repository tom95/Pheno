states
withState: aStateSymbol do: aBlock

	| index |
	index := self class stateSymbolToIndex: aStateSymbol.
	
	^ (self getState: index)
		ifTrue: [aBlock value: self]
		ifFalse: [ | return |
			self forState: index put: true.
			return := aBlock value: self.
			self forState: index put: false.
			return]