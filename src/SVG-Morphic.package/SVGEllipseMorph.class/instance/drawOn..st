as yet unclassified
drawOn: aCanvas
	"Draw the component on the canvas."
	
	(self composedStyle at: 'visibility')
		ifFalse: [^self].
	super drawOn: aCanvas.
	self renderer
		renderEllipse: self
		on: aCanvas