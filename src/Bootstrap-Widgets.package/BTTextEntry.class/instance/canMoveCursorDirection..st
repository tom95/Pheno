cursor
canMoveCursorDirection: aNumber

	^ ((self cursor = self text size and: [aNumber > 0]) or: [self cursor = 0 and: [aNumber < 0]]) not