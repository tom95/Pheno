drawing
displayFilterOn: canvas for: row in: drawBounds font: font
	"Draw filter matches if any."
	
	| fill |
	listSource filterableList ifFalse: [^ self].
	
	fill := self filterColor isColor
		ifTrue: [SolidFillStyle color: self filterColor]
		ifFalse: [self filterColor].
	fill isGradientFill ifTrue: [
		fill origin: drawBounds topLeft.
		fill direction: 0@ drawBounds height].
	
	self styleContext withClass: #listFilter do: [:context |
		(self filterOffsets: row) do: [:offset | | r |
			r := ((drawBounds left + offset first first) @ drawBounds top corner: (drawBounds left + offset first last) @ drawBounds bottom).
			context drawFullOn: canvas bounds: (r outsetBy: 1 @ 0).
			
			canvas
				drawString: offset second
				in: r
				font: font
				color: context color ]]