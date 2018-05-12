cursor
updateCursor
	| bounds p |
	bounds := self selectionBounds.
	p := self paragraph.
	
	p
		selectionStart: (p characterBlockForIndex: bounds first + 1)
		selectionStop: (p characterBlockForIndex: bounds second + 1)