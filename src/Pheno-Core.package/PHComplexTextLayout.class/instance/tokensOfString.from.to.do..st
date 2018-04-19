as yet unclassified
tokensOfString: aString from: start to: stop do: aBlock

	| currentStart |
	currentStart := start.
	
	start to: stop do: [:currentStop |
		(currentStop = stop or: [(aString at: currentStop) isSeparator]) ifTrue: [ | remainder |
			[(remainder := aBlock value: currentStart value: currentStop) > 0] whileTrue: [
				currentStart := currentStart + 1 + (currentStop - currentStart) - remainder].
			currentStart := currentStop + 1]]