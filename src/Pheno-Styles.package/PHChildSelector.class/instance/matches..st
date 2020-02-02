testing
matches: aStyleContext

	^ (self childSelector matches: aStyleContext) and: [(self parentSelector matches: aStyleContext parent)]