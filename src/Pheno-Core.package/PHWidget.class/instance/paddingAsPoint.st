layout
paddingAsPoint
	| p |
	p := self padding.
	^p class = Rectangle
		ifTrue: [ (p left + p right) @ (p top + p bottom) ]
		ifFalse: [ p asPoint * 2 ]