cursor
lineNumberOfIndex: aNumber

	| block |
	block := self paragraph characterBlockForIndex: aNumber + 1.
	^ {self paragraph lines indexOf: block textLine. block center x - origin x}