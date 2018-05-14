as yet unclassified
parseFontSize: aString baseFontSize: aNumber

	| index size |
	aString == #inherit ifTrue: [^ aString].
	
	size := aString.
	self flag: #fixme. " these two values are supposed to be relative to the surrounding size "
	size = 'smaller' ifTrue: [size := 'small'].
	size = 'larger' ifTrue: [size := 'large'].
	
	index := PHStyleContext fontSizeStrings
		indexOf: size
		ifAbsent: [^ size asNumber withScalingFactor floor].
	
	^ aNumber withScalingFactor * (1.2 raisedTo: index - 4)