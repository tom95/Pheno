helper
parseFontSize: aString

	| index size |
	aString == #inherit ifTrue: [^ aString].
	
	size := aString.
	self flag: #fixme. " these two values are supposed to be relative to the surrounding size "
	size = 'smaller' ifTrue: [size := 'small'].
	size = 'larger' ifTrue: [size := 'large'].
	
	index := PHStyleContext fontSizeStrings
		indexOf: size
		ifAbsent: [^ size asNumber floor].
	
	^ PHStyleContext baseFontSize * (1.2 raisedTo: index - 4)