as yet unclassified
composedFillStyle
	"Answer the composed fill style."

	|fill|
	fill := self composedStyle at: 'fill'.
	fill isGradientFill
		ifFalse: [^fill].
	fill := fill mappedTo: self.
	^fill