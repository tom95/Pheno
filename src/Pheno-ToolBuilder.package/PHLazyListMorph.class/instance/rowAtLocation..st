list management
rowAtLocation: aPoint
	"return the number of the row at aPoint"
	| y |
	y := aPoint y - self layoutInset top.
	y < self top ifTrue: [ ^ 1 min: self listItems size ].
	^((y - self top // (font height)) + 1) min: self listItems size max: 0