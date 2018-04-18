as yet unclassified
rectangleForIndex: aNumber

	| x text |
	(aNumber < self start or: [self start = 0]) ifTrue: [^ self left @ self top extent: 0 @ self height].
	aNumber > self stop ifTrue: [^ self right @ self top extent: 0 @ self height].
	
	x := self left.
	text := self layout text.
	text runs withStartStopAndValueFrom: self start to: aNumber do: [:runStart :runStop :attributes | | font |
		font := self layout fontFromAttributes: attributes.
		x := x + (font widthOfString: text string from: runStart to: (runStop min: aNumber)).
		aNumber <= runStop ifTrue: [^ x @ self top extent: 0 @ self height]]