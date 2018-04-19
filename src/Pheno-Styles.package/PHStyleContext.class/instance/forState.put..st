states
forState: aStateConstant put: aBoolean

	states at: aStateConstant put: (aBoolean ifTrue: [1] ifFalse: [0])