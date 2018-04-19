as yet unclassified
lookFocused

	super lookFocused.
	
	self allMorphsDo: [:morph | morph styleContext stateBackdrop: true].
	label ifNotNil: [ label color: label styleContext color ]