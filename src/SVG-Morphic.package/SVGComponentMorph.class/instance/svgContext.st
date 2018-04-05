as yet unclassified
svgContext
	"If our owner chain has an SVGMorph, answer it, otherwise answer the default context."

	^(self ownerThatIsA: SVGMorph) ifNil: [self defaultContext]