accessing
logicalAttributes

	| bits |
	bits := self primLayoutLogicalAttributes: self layout.
	
	^ bits collect: [ :bitfield | | field |
		field := -1.
		#(lineBreak
			mandatoryBreak
			charBreak
			whiteSpace
			cursorPosition
			wordStart
			wordEnd
			sentenceBoundary
			sentenceStart
			sentenceEnd
			backspaceDeletesCharacter
			expandableSpace
			wordBoundary) select: [ :name |
			field := field + 1.
			(bitfield bitAnd: (1 bitShift: field)) ~= 0 ]]