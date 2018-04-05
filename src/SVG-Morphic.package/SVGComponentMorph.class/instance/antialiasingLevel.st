as yet unclassified
antialiasingLevel
	"Answer the level of antialiasing to use when drawing"

	^self composedStyle at: 'aa-level' ifAbsent: [3]