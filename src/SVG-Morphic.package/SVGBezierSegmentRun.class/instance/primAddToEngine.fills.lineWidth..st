as yet unclassified
primAddToEngine: aBalloonEngine fills: fills lineWidth: lineWidth
	"Add the receiver's description to the ballooon engine."

	aBalloonEngine
		primAddBezierShape: self points
		segments: self segments size
		fill: (fills at: 1)
		lineWidth: lineWidth
		lineFill: (fills at: 2)