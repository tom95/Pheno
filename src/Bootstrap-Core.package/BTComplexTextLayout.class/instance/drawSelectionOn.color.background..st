as yet unclassified
drawSelectionOn: aCanvas color: aColor background: aBackgroundColor

	| bounds firstLine lastLine |
	bounds := self selectionBounds.
	
	firstLine := self lineForIndex: bounds first.
	lastLine := self lineForIndex: bounds second.
	
	firstLine == lastLine ifTrue: [
		^ aCanvas
			fillRectangle: (self selectionRectangleFrom: (firstLine rectangleForIndex: bounds first) to: (firstLine rectangleForIndex: bounds second))
			fillStyle: aBackgroundColor].
	
	self lines from: (self lines indexOf: firstLine) + 1 to: (self lines indexOf: lastLine) - 1 do: [:line |
		aCanvas fillRectangle: (self selectionRectangleFrom: line to: line) fillStyle: aBackgroundColor].
	
	aCanvas
		fillRectangle: (self selectionRectangleFrom: (firstLine rectangleForIndex: bounds first) to: firstLine) fillStyle: aBackgroundColor;
		fillRectangle: (self selectionRectangleFrom: lastLine to: (lastLine rectangleForIndex: bounds second)) fillStyle: aBackgroundColor