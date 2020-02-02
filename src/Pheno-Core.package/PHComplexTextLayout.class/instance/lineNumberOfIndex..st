cursor
lineNumberOfIndex: aNumber

	| line |
	line := self lineForIndex: aNumber.
	
	^ {self lines indexOf: line. (line rectangleForIndex: aNumber) origin x}