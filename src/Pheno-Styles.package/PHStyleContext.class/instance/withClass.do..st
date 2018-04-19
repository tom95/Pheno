classes
withClass: aClassSymbol do: aBlock

	^ (self hasClass: aClassSymbol)
		ifTrue: [aBlock value: self]
		ifFalse: [ | return |
			self addClass: aClassSymbol.
			return := aBlock value: self.
			self removeClass: aClassSymbol.
			return]