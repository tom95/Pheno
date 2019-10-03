as yet unclassified
lookFocused

	super lookFocused.
	
	self allMorphsDo: [:morph | morph isWidget ifTrue: [morph styleContext stateBackdrop: true]]