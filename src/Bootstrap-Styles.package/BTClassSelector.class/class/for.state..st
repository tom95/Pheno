instance creation
for: aClassValue state: aStateValue
	" both can be symbols or collections of symbols "

	^ self new
		classNames: (aClassValue isSymbol
			ifTrue: [{aClassValue}]
			ifFalse: [aClassValue]);
		state: (aStateValue isSymbol
			ifTrue: [{aStateValue}]
			ifFalse: [aStateValue]);
		yourself