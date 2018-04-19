as yet unclassified
fontFromAttributes: aCollectionOfAttributes

	| theFont |
	theFont := self font ifNil: [self class defaultFont].
	
	aCollectionOfAttributes do: [:attr | attr forFontInStyle: TextStyle default do: [:f | theFont := f]].
	
	^ theFont