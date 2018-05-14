text
updateFontStyles

	(self styleAttributes at: 'weight' ifAbsent: ['normal']) ~= self styleContext fontWeight
		ifTrue: [self styleAttributes at: 'weight' put: self styleContext fontWeight].
	
	(self styleAttributes at: 'style' ifAbsent: ['normal']) ~= self styleContext fontStyle
		ifTrue: [self styleAttributes at: 'style' put: self styleContext fontStyle].
	
	(self styleAttributes at: 'size' ifAbsent: [PHStyleContext baseFontSize]) ~= self styleContext fontSize
		ifTrue: [ | size |
			size := self styleContext fontSize.
			self flag: #fixme.  "currently, we have to convert this pango units first "
			self styleAttributes at: 'size' put: ([(size asNumber * 1024) asString] on: NumberParserError do: [size])]