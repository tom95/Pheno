*SVG-morphic
derivativeFont: aTTCFont
	"Modified since poping up an inform is really annoying when adding font sizes programatically!"

	| index |
	index := self indexOfSubfamilyName: aTTCFont subfamilyName.
	index < 1 ifTrue: [^nil].

	self derivativeFont: aTTCFont at: index.

	self addLined: aTTCFont.
