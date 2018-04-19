cursor
indexForPosition: aPoint

	^ {true. (self paragraph characterBlockAtPoint: aPoint + origin) stringIndex - 1. 0}