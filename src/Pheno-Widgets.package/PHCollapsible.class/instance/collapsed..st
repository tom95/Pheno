accessing
collapsed: aBoolean
	aBoolean == collapsed ifTrue: [^self].
	collapsed := aBoolean.
	container hasSubmorphs ifFalse: [^self].
	
	" if the world is nil, we're not on screen yet and in particular animating won't work, so we display immediately "
	self world ifNil: [
		self visible: aBoolean not.
		collapsed := aBoolean.
		^ self].
	
	widgetHeight := (container firstSubmorph preferredSizeForWidth: self width) minSize y + self paddingAsPoint y.
	
	endHeight := collapsed ifFalse: [widgetHeight] ifTrue: [0].
	startHeight := collapsed ifFalse: [0] ifTrue: [widgetHeight].
	endTime := Time millisecondClockValue + transitionDuration.
	
	animating := true.
	self collapsed ifFalse: [self visible: true].
	self layoutChanged.
	self startStepping: #animate at: Time millisecondClockValue arguments: nil stepTime: 1