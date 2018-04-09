resolving
whenRejected: aBlock
	"Evaluate aBlock when I am rejected"
	
	aBlock numArgs <= 1 ifFalse: [self error: 'Must be 0- or 1-argument block'].
	^ mutex critical: [
		rejecters := rejecters copyWith: aBlock.
		self isRejected ifTrue:[self evaluateRejecter: aBlock]]