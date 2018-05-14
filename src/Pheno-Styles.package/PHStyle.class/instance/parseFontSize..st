helper
parseFontSize: aString

	| index size |
	aString == #inherit ifTrue: [^ aString].
	
	size := aString.
	self flag: #fixme. " these two values are supposed to be relative to the surrounding size "
	size = 'smaller' ifTrue: [size := 'small'].
	size = 'larger' ifTrue: [size := 'large'].
	
	index := #('xx-small' 'x-small' 'small' 'medium' 'large' 'x-large' 'xx-large')
		indexOf: size
		ifAbsent: [^ size asNumber withScalingFactor floor].
	
	^ self baseFontSize withScalingFactor * (1.2 raisedTo: index - 4)