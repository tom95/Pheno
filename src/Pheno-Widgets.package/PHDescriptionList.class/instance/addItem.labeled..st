as yet unclassified
addItem: aWidget labeled: aLabelWidget

	| newWidth |
	newWidth := (aLabelWidget preferredSizeForWidth: -1) naturalSize x.
	newWidth > maxMinWidth ifTrue: [
		maxMinWidth := newWidth.
		self submorphsDo: [:each | each submorphs first minSize: maxMinWidth@0]].
	
	self add: (PHPage row
		add: (aLabelWidget minSize: maxMinWidth @ 0);
		add: aWidget)