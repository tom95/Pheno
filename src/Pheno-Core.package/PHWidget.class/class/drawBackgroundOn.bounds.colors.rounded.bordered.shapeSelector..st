drawing
drawBackgroundOn: aCanvas bounds: aRectangle colors: aColorSet rounded: rounded bordered: bordered shapeSelector: aSelector
	| r |
	r := aRectangle insetBy: (Rectangle
		left: (bordered fourth ifTrue: [1] ifFalse: [0])
		right: (bordered second ifTrue: [1] ifFalse: [0])
		top: (bordered first ifTrue: [1] ifFalse: [0])
		bottom: (bordered third ifTrue: [1] ifFalse: [0])).
	
	aCanvas asBalloonCanvas
		aaLevel: 4;
		
		drawBezier3Shape: ((self perform: aSelector with: r with: rounded with: #(true true true true)) collect: [ :po | po + r origin ])
		color: (aColorSet background)
		borderWidth: 0
		borderColor: nil;
		
		drawBezier3Shape: ((self perform: aSelector with: r with: rounded with: bordered) collect: [ :po | po + r origin ])
		color: nil
		borderWidth: 1
		borderColor: (aColorSet border)