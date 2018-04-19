drawing
createIconFormSize: aNumber

	| size |
	size := aNumber withScalingFactor.
	
	^ self icon
		ifNil: [Form extent: size asPoint depth: 32]
		ifNotNil: [:icon |
			(PHIcon respondsTo: icon)
				ifTrue: [(PHIcon perform: icon) formForSize: size color: self color]
				ifFalse: [Form extent: size asPoint depth: 32]]