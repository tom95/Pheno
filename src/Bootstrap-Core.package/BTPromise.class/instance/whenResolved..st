resolving
whenResolved: aBlock
	"Evaluate aBlock when I am resolved"
	
	aBlock numArgs <= 1 ifFalse:[self error: 'Must be 0- or 1-argument block'].
	^ mutex critical: [
		resolvers := resolvers copyWith: aBlock.
		self isResolved ifTrue:[self evaluateResolver: aBlock]]