as yet unclassified
indexForPosition: aPoint

	self lines do: [:line |
		(line containsPoint: aPoint) ifTrue: [^ {true. line indexForPosition: aPoint x. 0}]].
	
	^ {false. 0. 0}