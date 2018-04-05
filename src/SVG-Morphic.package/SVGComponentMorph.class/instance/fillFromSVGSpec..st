as yet unclassified
fillFromSVGSpec: svgColor
	"Answer a balloon fill style/color for the given svg color spec."

	(svgColor beginsWith: 'url')
		ifTrue: [^self context getFill: (svgColor allButFirst: 5) allButLast].
	(svgColor = 'none')
		ifTrue: [^Color transparent].
	^Color fromCSS2String: svgColor