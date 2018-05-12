text
minRows: aNumber

	| oldText minSizeY |
	[oldText := self layout text ifNil: [''].
	 self layout text: (String new: aNumber withAll: Character cr).
	 minSizeY := (self layout extent y / PHStyleContext scalingFactor).
	 self minSize: self minSize x @ minSizeY floor] ensure: [self layout text: oldText]