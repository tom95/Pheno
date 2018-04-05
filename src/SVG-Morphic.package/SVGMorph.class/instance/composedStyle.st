accessing
composedStyle
	"Answer the composed style dicrionary"

	self cachedComposedStyle isNil
		ifTrue: [self cachedComposedStyle: self style].
	^self cachedComposedStyle