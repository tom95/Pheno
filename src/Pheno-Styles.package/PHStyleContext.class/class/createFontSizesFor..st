accessing - fonts
createFontSizesFor: aFont

	aFont isTTCFont ifFalse: [self error: 'Creating scaled versions of fonts is only supported for truetype fonts'].
	self fontSizeStrings do: [:size | TextStyle default addNewFontSize: (self parseFontSize: size) floor]