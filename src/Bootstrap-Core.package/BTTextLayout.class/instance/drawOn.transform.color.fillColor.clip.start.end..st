drawing
drawOn: aForm transform: aTransform color: aColor fillColor: anotherColor clip: aRectangle start: aNumber end: anotherNumber

	self
		primLayoutRender: self layout
		form: aForm
		origin: aTransform asMatrixTransform2x3
		color: (aColor pixelWordForDepth: 32)
		fillColor: (anotherColor pixelWordForDepth: 32)
		clipX: aRectangle origin x asFloat
		clipY: aRectangle origin y asFloat
		clipWidth: aRectangle width asFloat
		clipHeight: aRectangle height asFloat
		start: aNumber
		end: anotherNumber