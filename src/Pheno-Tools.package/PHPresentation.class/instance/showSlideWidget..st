presenting
showSlideWidget: aWidget

	slides currentWidget ifNotNil: [:current | (current respondsTo: #leave) ifTrue: [current leave]].
	slides selectWidget: aWidget.
	aWidget ifNotNil: [:current | (aWidget respondsTo: #enter) ifTrue: [current enter]].
	self updateCounter