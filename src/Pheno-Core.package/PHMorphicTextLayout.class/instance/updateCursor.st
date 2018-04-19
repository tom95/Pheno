cursor
updateCursor
	| bounds p |
	cursor ifNil: [ ^self ].
	
	bounds := self selectionBounds.
	p := self paragraph.
	
	p
		selectionStart: (p characterBlockForIndex: bounds first + 1)
		selectionStop: (p characterBlockForIndex: bounds second + 1)