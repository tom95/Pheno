private
parseFontSize: aString

	| index size |
	size := aString.
	self flag: #fixme. " these two values are supposed to be relative to the surrounding size "
	size = 'smaller' ifTrue: [size := 'small'].
	size = 'larger' ifTrue: [size := 'large'].
	
	index := #('xx-small' 'x-small' 'small' 'medium' 'large' 'x-large' 'xx-large')
		indexOf: size
		ifAbsent: [^ (size asNumber / 1024 * BTWidget scalingFactor) floor].
	
	^ self baseFontSize * (1.2 raisedTo: index - 4)