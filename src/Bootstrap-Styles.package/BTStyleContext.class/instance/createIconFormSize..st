drawing
createIconFormSize: aNumber

	| size |
	size := aNumber withScalingFactor.
	
	^ self icon
		ifNil: [Form extent: size asPoint depth: 32]
		ifNotNil: [:icon |
			(BTIcon respondsTo: icon)
				ifTrue: [(BTIcon perform: icon) formForSize: size color: self color]
				ifFalse: [Form extent: size depth: 32]]