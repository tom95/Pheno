cursor
cursorRectAt: index
	" returns strong and weak cursor rectangles for cursor position at index "
	
	| data |
	data := self primLayout: layout cursorPos: index.
	^{data first extent: data second. data third extent: data fourth}