as yet unclassified
drawCursorOn: aCanvas origin: aPoint color: aColor

	| cursorRect |
	cursorRect := self rectangleForIndex: cursor.
	
	aCanvas
			fillRectangle: (aPoint + cursorRect origin extent: self cursorWidth @ cursorRect extent y)
			fillStyle: aColor