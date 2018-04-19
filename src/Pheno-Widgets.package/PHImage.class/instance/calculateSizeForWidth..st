layout
calculateSizeForWidth: aNumber

	self form ifNil: [^ PHSizeRequest fixed: self minSize].
	
	scalingMode == #full ifTrue: [^ PHSizeRequest fixed: self form extent].
	scalingMode == #fill ifTrue: [^ PHSizeRequest min: self minSize natural: aNumber @ (self heightAtWidth: aNumber)].
	scalingMode == #fixed ifTrue: [^ PHSizeRequest fixed: self minSize].
	scalingMode == #shrink ifTrue: [ | width |
		width := aNumber min: self form extent x.
		^ PHSizeRequest min: self minSize natural: width @ (self heightAtWidth: width)].
	
	^ self error: 'Unsupported scalingMode'