*SVG-Morphic
primAddToEngine: aBalloonEngine fills: fills lineWidth: lineWidth
	"Add the receiver's description to the ballooon engine."

	|points|
	points := self asBezier2Shape: 0.5.
	aBalloonEngine
		primAddBezierShape: points
		segments: points size // 3
		fill: (fills at: 1)
		lineWidth: lineWidth
		lineFill: (fills at: 2)