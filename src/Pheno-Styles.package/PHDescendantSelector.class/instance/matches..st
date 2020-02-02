testing
matches: aStyleContext

	^ (self childSelector matches: aStyleContext) and:
		[aStyleContext anyParentSatisfies: [:parent | self parentSelector matches: parent]]