states
withStateConstant: aStateConstant do: aBlock

	^ (self getState: aStateConstant)
		ifTrue: [aBlock value: self]
		ifFalse: [ | return |
			self forState: aStateConstant put: true.
			return := aBlock value: self.
			self forState: aStateConstant put: false.
			return]