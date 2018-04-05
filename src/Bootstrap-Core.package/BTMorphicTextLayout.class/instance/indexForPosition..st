cursor
indexForPosition: aPoint
	^{true. (self paragraph characterBlockAtPoint: aPoint) stringIndex. 0}