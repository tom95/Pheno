cursor
moveCursorVertically: aNumber selecting: aBoolean
	" negative numbers move up, positive down "
	
	| data line |
	data := self layout lineNumberOfIndex: self cursor.
	(aNumber < 0 and: [data first = 0])
		ifTrue: [self cursor: 0]
		ifFalse: [
			(aNumber > 0 and: [data first = (self layout numberOfLines - 1)])
				ifTrue: [self cursor: self text size]
				ifFalse: [
					line := data first + aNumber.
					data := self layout indexAtLine: line x: data second.	

					self cursor: data first + data second]].
	
	aBoolean ifFalse: [self selectionBound: self cursor]