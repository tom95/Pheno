as yet unclassified
composedStyle
	"Answer the composed style dictionary"

	self cachedComposedStyle isNil
		ifTrue: [self
				cachedComposedStyle: (self context composedStyle copy
					addAll: self style;
					yourself)].
	^self cachedComposedStyle