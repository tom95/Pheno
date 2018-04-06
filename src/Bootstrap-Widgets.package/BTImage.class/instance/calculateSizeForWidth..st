layout
calculateSizeForWidth: aNumber

	self form ifNil: [^ BTSizeRequest fixed: self minSize].
	
	scalingMode == #full ifTrue: [^ BTSizeRequest fixed: self form extent].
	scalingMode == #fill ifTrue: [^ BTSizeRequest min: self minSize natural: aNumber @ (self heightAtWidth: aNumber)].
	scalingMode == #fixed ifTrue: [^ BTSizeRequest fixed: self minSize].
	scalingMode == #shrink ifTrue: [ | width |
		width := aNumber min: self form extent x.
		^ BTSizeRequest min: self minSize natural: width @ (self heightAtWidth: width)].
	
	^ self error: 'Unsupported scalingMode'