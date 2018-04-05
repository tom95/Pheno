layout
inVerticalLayout: aBoolean

	vertical := aBoolean.
	
	self expanding: ((self widget wantsExpandIn: aBoolean) at: (aBoolean ifTrue: [2] ifFalse: [1]))