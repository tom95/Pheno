text
textKeepCursor: aString

	| selection |
	super text: aString.
	
	selection := self selectionBounds.
	selection first > aString size
		ifTrue: [self placeCursorAt: aString size]
		ifFalse: [
			selection second > aString size ifTrue: [
				self selectionBound > self cursor
					ifTrue: [self selectionBound: aString size]
					ifFalse: [self cursor: aString size]]]