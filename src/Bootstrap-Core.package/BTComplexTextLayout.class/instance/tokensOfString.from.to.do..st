as yet unclassified
tokensOfString: aString from: start to: stop do: aBlock

	| currentStart |
	currentStart := start.
	
	start to: stop do: [:index |
		(aString at: index) isSeparator ifTrue: [
			aBlock value: currentStart value: index.
			currentStart := index + 1]].
	
	currentStart < stop ifTrue: [aBlock value: currentStart value: stop]