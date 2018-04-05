*SVG-Morphic
boundingBox
	"Return the bounds containing the receiver"
	^super bounds encompass: (self valueAt: 0.5)