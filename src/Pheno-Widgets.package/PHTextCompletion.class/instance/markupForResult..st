text
markupForResult: aString

	| end start |
	start := aString findString: self text startingAt: 1 caseSensitive: false.
	start isZero ifTrue: [^ aString].
	
	end := start + self text size - 1.

	^ (aString first: start - 1), '<b>', (aString copyFrom: start to: end), '</b>', (aString allButFirst: end)