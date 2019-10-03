styles
convertPaddingToRectangle: anObject
	
	anObject isRectangle ifTrue: [^ anObject].
	anObject isNumber ifTrue: [^ Rectangle left: anObject right: anObject top: anObject bottom: anObject].
	anObject isPoint ifTrue: [^ Rectangle left: anObject x right: anObject x top: anObject y bottom: anObject y].
	self error: 'Invalid object passed'