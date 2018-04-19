as yet unclassified
lookUnfocused

	super lookUnfocused.
	
	self allMorphsDo: [:morph | morph styleContext stateBackdrop: true].
	label ifNotNil: [ label color: label styleContext color ]