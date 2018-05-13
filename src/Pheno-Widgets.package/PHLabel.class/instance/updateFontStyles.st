text
updateFontStyles

	(self styleAttributes at: 'weight' ifAbsent: ['normal']) ~= self styleContext fontWeight
		ifTrue: [self styleAttributes at: 'weight' put: self styleContext fontWeight].
	
	(self styleAttributes at: 'style' ifAbsent: ['normal']) ~= self styleContext fontStyle
		ifTrue: [self styleAttributes at: 'style' put: self styleContext fontStyle].
	
	(self styleAttributes at: 'size' ifAbsent: [PHStyleContext baseFontSize]) ~= self styleContext fontSize
		ifTrue: [self styleAttributes at: 'size' put: (self styleContext fontSize * 1024) asString]