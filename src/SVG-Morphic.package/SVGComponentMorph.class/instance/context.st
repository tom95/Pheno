as yet unclassified
context
	"If our owner chain has an SVGCompositeMorph, answer it, otherwise answer the default context."

	^(self ownerThatIsA: SVGCompositeMorph) ifNil: [self defaultContext]