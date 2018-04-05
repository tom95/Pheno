*SVG-Morphic
setSkew: aPoint
	"Set the raw skew angles in the receiver"

	| radX radY sx sy|
	radX := aPoint x degreesToRadians.
	radY := aPoint y degreesToRadians.
	sx := radX tan.
	sy  := radY  tan.
	self a21: sx.
	self a12: sy