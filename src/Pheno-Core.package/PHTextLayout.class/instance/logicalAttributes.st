accessing
logicalAttributes
	" returns an array corresponding to each character in the text. in each slot,
	  there is a list of attributes that match on this particular character.
	  Possible attributes:
			lineBreak
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
			wordBoundary"
	^self subclassResponsibility