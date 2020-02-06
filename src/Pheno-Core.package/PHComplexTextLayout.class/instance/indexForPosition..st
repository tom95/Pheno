cursor
indexForPosition: aPoint

	self lines do: [:line |
		(line top <= aPoint y and: [line bottom + self lineSpacing >= aPoint y]) ifTrue: [^ {true. line indexForPosition: aPoint x. 0}]].
	
	" check if cursor is above us and take first line "
	aPoint y < self lines first top ifTrue: [^ {false. self lines first indexForPosition: aPoint x. 0}].
	
	" if all else fails take last line "
	^ {false. self lines last indexForPosition: aPoint x. 0}