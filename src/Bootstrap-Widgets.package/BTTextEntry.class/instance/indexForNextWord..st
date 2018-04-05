cursor
indexForNextWord: direction

	| attributes index boundary |
	attributes := self layout logicalAttributes.
	boundary := direction < 0 ifTrue: [#wordStart] ifFalse: [#wordEnd].
	index := self cursor.
	
 [index := index + direction] doWhileTrue:
		[index > 0 and:
		[index < self text size and:
		[((attributes at: index + 1) includes: boundary) not]]].
	
	^ index clampLow: 0 high: self text size