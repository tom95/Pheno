cursor
moveCursor: isStrong direction: aNumber selecting: aBoolean

	| data |
	" we're leaving a selection, don't actually move any bounds, just collapse them "
	(self hasSelection and: [aBoolean not]) ifTrue: [
		^ self placeCursorAt: (self betterCursorAfterSelectionTo: aNumber)].

	(self canMoveCursorDirection: aNumber) ifTrue: [
		data := self layout
			moveCursor: isStrong
			index: self cursor
			trailing: 0
			direction: aNumber.
		self cursor: data first + data second].
	
	aBoolean ifFalse: [self selectionBound: self cursor]