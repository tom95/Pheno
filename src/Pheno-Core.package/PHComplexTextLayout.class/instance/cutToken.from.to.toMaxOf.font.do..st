as yet unclassified
cutToken: aText from: tokenStart to: tokenStop toMaxOf: aNumber font: aFont do: aBlock

	"^ (tokenStart to: tokenStop)
		findBinaryIndex: [:cutIndex | (aFont widthOfString: aText from: tokenStart to: cutIndex) <=> aNumber]
		do: #yourself
		ifNone: [:h :l | self error: 'unable to cut token']"
	
	| index actualWidth newestWidth |
	self flag: #performance. "see above for smth somewhat smarter. case should only occur rarely though"
	
	index := tokenStart.
	actualWidth := 0.
	[(newestWidth := aFont widthOfString: aText from: tokenStart to: index + 1) <= aNumber and: [index < tokenStop]] whileTrue: [
		index := index + 1.
		actualWidth := newestWidth].
	aBlock value: index value: actualWidth.
	^ index