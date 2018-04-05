constants
scalingFactor: aNumber
	" set your image-local DPI "
	
	ScalingFactor := aNumber.

	BTPangoTextLayout available ifTrue: [BTPangoTextLayout updateDpi]