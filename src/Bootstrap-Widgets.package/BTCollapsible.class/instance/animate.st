animation
animate
	| progress height |

	progress := 1.0 - (endTime - Time millisecondClockValue / transitionDuration) min: 1.0.
	height := (startHeight interpolateTo: endHeight at: progress).
	height := self easeInOutCubicFrom: startHeight to: endHeight at: progress.
	
	container offset: 0 @ (widgetHeight - height).
	
	progress >= 1.0 ifTrue: [
		animating := false.
		self layoutChanged; fullBounds.
		self collapsed ifTrue: [self visible: false].
		self stopSteppingSelector: #animate ]