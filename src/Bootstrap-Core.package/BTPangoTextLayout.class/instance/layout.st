accessing
layout

	^ layout = 0
		ifTrue: [layout := self primLayoutCreate]
		ifFalse: [layout]