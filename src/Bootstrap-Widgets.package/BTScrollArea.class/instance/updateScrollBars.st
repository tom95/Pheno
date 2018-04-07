layout
updateScrollBars

	| isVertical offset size |
	container hasSubmorphs ifFalse: [
		scrollBars do: [:bar | bar visible: false].
		^ self ].
	
	isVertical := false.
	size := self extent * self percentVisible.
	offset := self extent * (self scrollOffset  / (container firstSubmorph extent max: 1 asPoint)).
	
	scrollBars do: [:scrollbar | | padding width |
		padding := scrollbar styleContext padding.
		width := isVertical ifTrue: [padding left] ifFalse: [padding top].
		scrollbar visible: (isVertical ifTrue: [size y < self height] ifFalse: [size x < self width]).
		
		scrollbar bounds: ((isVertical
			ifTrue: [self width - width @ offset y extent: width @ size y]
			ifFalse: [offset x @ self height - width extent: size x @ width]) translateBy: self layoutBounds origin).
		
		isVertical := true]