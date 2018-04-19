hierarchy
formInputs
	^self isFormInput
		ifTrue: [{self}]
		ifFalse: [self submorphs gather: [:widget | widget formInputs]]