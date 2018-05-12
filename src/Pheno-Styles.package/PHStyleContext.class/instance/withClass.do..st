classes
withClass: aClassSymbol do: aBlock

	^ (self hasClass: aClassSymbol)
		ifTrue: [aBlock value: self]
		ifFalse: [ | return |
			self basicAddClass: aClassSymbol.
			return := aBlock value: self.
			self basicRemoveClass: aClassSymbol.
			return]