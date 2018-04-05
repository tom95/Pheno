as yet unclassified
default
	"Answer the default renderer."

	^DefaultRenderer ifNil: [^DefaultRenderer := SVGBalloonRenderer new]