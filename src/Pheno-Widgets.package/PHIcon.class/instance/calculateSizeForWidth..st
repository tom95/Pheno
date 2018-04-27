colors
calculateSizeForWidth: aNumber

	| size |
	size := self styleContext fontSize withScalingFactor asPoint max: self minSize.
	"size := 16 withScalingFactor asPoint + 1."

	^ PHSizeRequest min: size natural: size