as yet unclassified
fontForSize: aNumber

	| textStyle font |
	textStyle := self defaultTextStyle.
	
	^ textStyle defaultFont isTTCFont
		ifTrue: [
			font := textStyle addNewFontSize: aNumber.
			" bug in TextStyle: adding a font does not update the defaultFontIndex "
			textStyle defaultFontIndex: (textStyle fontIndexOfPointSize: self baseFontSize withScalingFactor).
			font]
		ifFalse: [textStyle fontOfSize: aNumber]