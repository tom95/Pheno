helper
hexToColor: aSymbolOrColor

	aSymbolOrColor == #inherit ifTrue: [^ aSymbolOrColor].
	
	self flag: #todo. "we can probably get rid of that metaprog here, somehow"
	(aSymbolOrColor isKindOf: GradientFillStyle) ifTrue: [^ aSymbolOrColor].
	
	^ aSymbolOrColor isColor
		ifTrue: [aSymbolOrColor]
		ifFalse: [ | colorString |
			colorString := aSymbolOrColor isSymbol ifTrue: ['#', aSymbolOrColor] ifFalse: [aSymbolOrColor].
			(colorString first == $# and: [colorString size = 4]) ifTrue: [
				colorString := '#', colorString second, colorString second, colorString third, colorString third, colorString fourth, colorString fourth].
			Color fromString: colorString]