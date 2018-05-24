accessing
alignmentAttributeFor: aSymbol

	aSymbol == #center ifTrue: [^ TextAlignment centered].
	aSymbol == #justified ifTrue: [^ TextAlignment justified].
	aSymbol == #right ifTrue: [^ TextAlignment rightFlush].
	^ TextAlignment leftFlush