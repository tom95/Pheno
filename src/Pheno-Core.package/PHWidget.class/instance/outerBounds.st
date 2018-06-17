styles
outerBounds

	^ self styleContext boxSizing == #contentBox
		ifTrue: [super outerBounds outsetBy: self styleContext borderWidth withScalingFactor]
		ifFalse: [super outerBounds]