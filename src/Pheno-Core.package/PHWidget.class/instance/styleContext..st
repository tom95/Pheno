styles
styleContext: aStyleContext

	styleContext ifNotNil: [styleContext removeDependent: self].

	styleContext := aStyleContext.
	aStyleContext addDependent: self.
	self changed