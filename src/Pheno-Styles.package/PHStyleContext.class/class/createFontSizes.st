as yet unclassified
createFontSizes

	TextStyle default defaultFont isTTCFont ifFalse: [self error: 'Creating scaled versions of fonts is only supported for truetype fonts'].
	
	(UIManager confirm: 'It is recommended that you first set your default font''s size to ', self baseFontSize withScalingFactor, '. Continue?')
		ifTrue: [self fontSizeStrings do: [:size | TextStyle default addNewFontSize: (self parseFontSize: size) floor]]