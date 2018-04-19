constants
scalingFactor: aNumber
	" set your image-local DPI "
	
	ScalingFactor := aNumber.

	PHPangoTextLayout available ifTrue: [PHPangoTextLayout updateDpi]