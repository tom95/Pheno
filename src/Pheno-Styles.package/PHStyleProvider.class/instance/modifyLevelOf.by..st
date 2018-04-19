change reporting
modifyLevelOf: aColor by: aNumber
	" darken or lighten color by a number of levels. Typically in a range of [-10; 10] "

	| base |
	base := aNumber > 0 ifTrue: [Color black] ifFalse: [Color white].
	^ base mixed: aNumber abs * 0.08 with: aColor