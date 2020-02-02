panes
addMorph: aMorph fullFrame: aFrame

	super addMorph: aMorph fullFrame: aFrame.
	self extent: (self minimumExtent max: self extent)