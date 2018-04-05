as yet unclassified
composedFontFillStyle
	"Answer the composed font fill style."

	|fill|
	fill := self composedStyle at: 'font-fill'ifAbsent: [self composedFillStyle].
	^fill