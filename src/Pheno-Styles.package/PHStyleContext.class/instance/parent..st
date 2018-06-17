accessing
parent: aStyleContext

	parent := aStyleContext.
	parent ifNotNil: [parent addDependent: self].
	self changed