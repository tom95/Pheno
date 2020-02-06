cursor
indexAtLine: aLineNumber x: aNumber

	^ {(self lines at: aLineNumber) indexForPosition: aNumber. 0}